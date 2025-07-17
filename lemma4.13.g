#This code verifies the claim made at the end of Lemma 4.13. Namely, it checks that if theta is a stable 2-gradings on F4 or G2, then there are two distinct theta-subregular orbits with distinct set of G_m-weights on X_e

#To verify this claim, first execute or load orbitsandweights.g 
#Then run the code below

#Stable 2-grading on G2:
theta:=FiniteOrderInnerAutomorphisms("G",2,2)[1];;
smallorbitdata(theta);;

#Stable 2-grading on F4:
theta:=FiniteOrderInnerAutomorphisms("F",4,2)[2];;
smallorbitdata(theta);;

#In each case, there are two nilpotent orbits of codimension 1 whose Dynkin labeling has all labels equal to 2 except one label equal to zero. Such orbit are theta-subregular, and inspecting the weights shows that they have distinct G_m-weights on X_e
