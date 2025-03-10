LoadPackage("sla");
SetInfoLevel( InfoSLA, 1 );

#Given theta with source L and an sl2-triple s, return the dimension of the centralizer of f in h_0. (Equivalently, the dimension of the centralizer of #h in h_0)

codimension := function(theta,L,s)
local U1,U2;
U1:=Subspace(L,Grading(theta)[1]);
U2:=Centralizer(L,s[1]);
return Dimension(Intersection(U1,U2));
end;

#Given theta and source L and a list of sl2-triples S, return the sublist of sl2-triples whose nilpotent orbit has codimension 0 or 1. (We assume theta is stable in this function to know that the codimension equals z_{h_0}(e).

smallorbits := function(theta,L,S)
local Ssmall,i;
Ssmall:=[];
for i in [1..Length(S)] do;
if codimension(theta,L,S[i])<2 then;
Add(Ssmall,S[i]);
fi;
od;
return Ssmall;
end;


#Given theta of order m with source L and an sl2-triple s, compute the weights for the Gm\times \mu_m-action \rho\times \sigma on #the slice S_e = e + z_h(f). We record the weights as tuples (a,b) with a an integer and b an integer mod m.
#(Note that if s is a normal regular triple, then these weights are also the weights on the GIT quotient B = h1//G.)

weights:=function(theta,m,L,s)
local Gmweights,mumweights,multiplicities,mult, U1, U2, Utheta, Uh,k, i;
Gmweights:=[];
mumweights:=[];
multiplicities:=[];
U1:=Centralizer(L,s[1]);
for i in [1..m] do;
Utheta:=Subspace(L,Grading(theta)[i]);
U2:=Intersection(U1,Utheta);
Uh:=SL2Grading(L,s[2]);
mult:=Dimension(Intersection(U2,Subspace(L,Uh[3])));
if mult>0 then;
Add(Gmweights,2);
Add(mumweights,2-i);
Add(multiplicities,mult);
fi;
for k in [1..Length(Uh[2])] do;
mult:=Dimension(Intersection(U2,Subspace(L,Uh[2][k])));
if mult>0 then;
Add(Gmweights,k+2);
Add(mumweights,2-i);
Add(multiplicities,mult);
fi;
od;
od;
return [Gmweights,mumweights,multiplicities];
end;


#Prints the output nicely of the previous function
printweights := function(T)
local k, i;
k:=Size(T[1]);
for i in [1..k] do;
Print("Weight ",[T[1][i],T[2][i]]," with multiplicity ",T[3][i],"\n");
od;
end;


#Given a grading theta on a Lie algebra L and a list of sl2-triples S, print the weighted Dynkin diagrams of the nilpotent elements of S, together with their weights under the G_m\times \mu_m-action, and return the closure relations between them.

orbitdata:= function(theta,L,S)
local r, i, m;
m:=Order(theta);
r:=ClosureDiagram(L, theta,S);
S:=r.sl2;
for i in [1..Size(S)] do;
Print("\n");
Print(i,". Dynkin labeling: ",WeightedDynkinDiagram(L,S[i][3]),"\n");
Print("Relative dimension: ",codimension(theta,L,S[i]),"\n");
printweights(weights(theta,m,L,S[i]));
od;
Print("\n");
Print("Closure relations: ",r.diag);
return r;
end;

#Given theta, determine all the orbits of codimension \leq 1 and print their orbit data, and return the set of sl2-triples and the closure relations between them.
smallorbitdata:=function(theta)

local L, m, S;
L:=Source(theta);
m:=Order(theta);
S:=NilpotentOrbitsOfThetaRepresentation(theta);
S:=smallorbits(theta,L,S);
return orbitdata(theta,L,S);
end;
