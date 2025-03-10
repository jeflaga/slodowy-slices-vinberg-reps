#Load the "sla" package in GAP if you have not done so already

#We show how to find a stable grading of a given order on a simple Lie algebra of a given type. We carry this out for the 2-grading on F4 as an example:
f:=FiniteOrderInnerAutomorphisms("F",4,2);;
for i in [1..Length(f)] do;
Print(i," ",KacDiagram(f[i]),"\n");
od;
#Examining the Kac diagrams and comparing with Reeder--Levy--Yu--Gross ("Gradings of positive rank on simple Lie algebras", Section 7.1) shows that f[2] is the stable grading. 



#Using the same method, we record many of the stable gradings on exceptional Lie algebras below.

#Stable 2-grading on G2:
theta:=FiniteOrderInnerAutomorphisms("G",2,2)[1];;
#Stable 3-grading on G2:
theta:=FiniteOrderInnerAutomorphisms("G",2,3)[2];;
#Stable 2-grading on F4:
theta:=FiniteOrderInnerAutomorphisms("F",4,2)[2];;
#Stable 3-grading on F4:
theta:=FiniteOrderInnerAutomorphisms("F",4,3)[3];;
#Stable 4-grading on F4:
theta:=FiniteOrderInnerAutomorphisms("F",4,4)[4];;
#Stable 6-grading on F4:
theta:=FiniteOrderInnerAutomorphisms("F",4,6)[10];;
#Stable 8-grading on F4:
theta:=FiniteOrderInnerAutomorphisms("F",4,8)[20];;
#Stable inner 3-grading on E6:
theta:=FiniteOrderInnerAutomorphisms("E",6,3)[4];;
#Stable inner 6-grading on E6:
theta:=FiniteOrderInnerAutomorphisms("E",6,6)[23];;
#Stable inner 9-grading on E6:
theta:=FiniteOrderInnerAutomorphisms("E",6,9)[93];;
#Stable outer 4-grading on E6:
theta:=FiniteOrderOuterAutomorphisms("E",6,4,2)[2];;
#Stable outer 6-grading on E6:
theta:=FiniteOrderOuterAutomorphisms("E",6,6,2)[4];;
#Stable outer 12-grading on E6:
theta:=FiniteOrderOuterAutomorphisms("E",6,12,2)[14];;
#Stable 6-grading on E7:
theta:=FiniteOrderInnerAutomorphisms("E",7,6)[27];;
#Stable 14-grading on E7:
theta:=FiniteOrderInnerAutomorphisms("E",7,14)[??];;
#Stable 3-grading on E8: (warning: computations might take a very long time for this one, and it can be analyzed using other means, see Vinberg-Elashvili)
theta:=FiniteOrderInnerAutomorphisms("E",8,3)[??];;
#Stable 4-grading on E8: (might take a long time? Calculation did not terminate after one hour on my laptop)
theta:=FiniteOrderInnerAutomorphisms("E",8,4)[4];;
#Stable 5-grading on E8:
theta:=FiniteOrderInnerAutomorphisms("E",8,5)[6];;
#Stable 6-grading on E8:
theta:=FiniteOrderInnerAutomorphisms("E",8,6)[7];;
#Stable 8-grading on E8:
theta:=FiniteOrderInnerAutomorphisms("E",8,8)[32];;
#Stable outer 3-grading on D4:
theta:=FiniteOrderOuterAutomorphisms("D",4,3,3)[2];;