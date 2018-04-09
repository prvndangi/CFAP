#Data Structures in R

#Vectors----
v1 = c('A','B','C')  #create a vector
v1   #print the vector
class(v1)  #print the class of vector

(v2 = c(1,2,3))  #create as well as print
class(v2)

(v3 = c(TRUE, FALSE, TRUE))
class(v3)

v3a = c(T,F,T)
v3a
class(v3)

v3b <- c(T,F,T)
v3b

v4 = 100:200
v4
length(v4)  #size of the vector

v5 = seq(1,10,2)
v5

v4[c(1,3,4)]

v4[-c(1,3,4)]

v4[v4>150]

v6 = c('A','C','D')
v1[v1 %in% v6]

v1[! v1 %in% v6]

v1[1]
v1['A']  #wrong



#DataFrame----

rollno=c(1,2,3)
name=c('Rohit','Lalit','Hitesh')
course=c('MBA','BBA','MCA')
dept=c('Dept1','Dept1','Dept2')
marks=floor(rnorm(3,50,10))   #floor, ceiling, truncate, round- 4 func. for approximation

?rnorm  #to ask about a command
rnorm(3,50,10)

students = data.frame(rollno,name,course,dept,marks)

students
class(students)
str(students)
summary(students)

#Matrix----





#Arrays----




#List----




#Factors----


