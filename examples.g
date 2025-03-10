#To run the examples in this file, you first need to execute or read the commands in the orbitsandweights.g file.

#Let theta be a stable grading on a simple Lie algebra. Many such gradings are recorded in the ``stablegradinglist.g'' file. For example, we may take

theta:=FiniteOrderInnerAutomorphisms("F",4,2)[2];;

#for the stable Z/2Z-grading on F4.

#The easiest way to run the code is to use the smallorbitdata function. In the above example, typing

data:=smallorbitdata(theta);;

#will output all the nilpotent orbits of codimension at most 1 in the nilpotent cone, together with the G_m x mu_m weights on the corresponding Slodowy slices. 
#The result is that there are three nilpotent orbits, one of maximal dimension, which is regular, and two of codimension 1, which are both subregular.
#The object data consists of two parts: data[1], which is a list of sl2-triples representing the orbits of codimension at most 1, and data[2], which represents their closure relations.


#Here is another example, coming from the stable 5-grading on E8:

theta:=FiniteOrderInnerAutomorphisms("E",8,5)[6];;
data:=smallorbitdata(theta);;

#On an Apple M1 8GB 2020 Macbook Air, this calculation took around 5 minutes.

