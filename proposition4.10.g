#This code verifies the claims made at the end of Proposition 4.10. Namely, it checks that certain stable gradings admit theta-subregular elements. 

#To verify this claim, first execute or load orbitsandweights.g 
#Then run the code below

#Stable outer 3-grading on D4:
theta:=FiniteOrderOuterAutomorphisms("D",4,3,3)[2];;
smallorbitdata(theta);;

#Stable inner 3-grading on E6:
theta:=FiniteOrderInnerAutomorphisms("E",6,3)[4];;
smallorbitdata(theta);;

#Stable outer 4-grading on E6:
theta:=FiniteOrderOuterAutomorphisms("E",6,4,2)[2];;
smallorbitdata(theta);;

#Stable 5-grading on E8:
theta:=FiniteOrderInnerAutomorphisms("E",8,5)[6];;
smallorbitdata(theta);;

#Stable 3-grading on F4:
theta:=FiniteOrderInnerAutomorphisms("F",4,3)[3];;
smallorbitdata(theta);;

#Stable 4-grading on F4:
theta:=FiniteOrderInnerAutomorphisms("F",4,4)[5];;
smallorbitdata(theta);;

#Stable 3-grading on G2:
theta:=FiniteOrderInnerAutomorphisms("G",2,3)[2];;
smallorbitdata(theta);;

#In each case, there is a nilpotent orbit of codimension 1 whose Dynkin labeling has all labels equal to 2 except one label equal to zero. Such an orbit is theta-subregular.  

