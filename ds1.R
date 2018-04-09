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

(mymatrix = matrix(1:24, ncol=6))
(mymatrix = matrix(1:24, ncol=6, byrow=T))

(mymatrix = matrix(11:34, ncol=6, byrow=T))

length(11:34) #to check the no. of numbers in that range

?matrix #to know about the matrix datatype

mymatrix

mymatrix[2:4, 3:4]
mymatrix[1,]
mymatrix[,2]
mymatrix[4,5]

1:6
paste('R',1:6)
paste('R',1:6, sep='')
paste('C',1:4, sep='')

rn = paste('R',1:4, sep='-')
cn = paste('C',1:6, sep='-')
dimnames(mymatrix) = list(c(rn),c(cn))
mymatrix

dimnames(mymatrix) = list(c(paste('R',1:6, sep='')), c(paste('C',1:4, sep='')))
mymatrix

colSums(mymatrix)
rowSums(mymatrix)
colMeans(mymatrix)
rowMeans(mymatrix)


?dimnames
                          

#Arrays----

(myarray = array(101:124, dim=c(4,3,2)))
(myarray = array(211:234, dim=c(4,3,2)))

myarray = array(1:24, dim=c(4,3,2), dimnames = list(c('s1','s2','s3','s4'), c('Sub1','Sub2','Sub3'), c('Dept1','Dept2')))
myarray

apply(myarray,1,sum)
apply(myarray,2,sum)
apply(myarray,3,sum)

apply(myarray,2,mean)
apply(myarray, c(2,3), mean)
apply(myarray, c(1,3), mean)
apply(myarray, c(1,2), mean)

apply(myarray, c(1,2), max)
#apply(name of array, dimensions(numerical), function)


#List----

listL1 = list('dangi', v1, students, mymatrix, myarray)
listL1
#combination of any no. of different datatypes


#Factors----

name = c('s1','s2','s3','s4','s5')
course = c('PHD','MTECH','BTECH','BTECH','PHD')
gender = c('M','F','M','F','M')
grades = c('A','B','C','A','F')
marks = floor(runif(5,50,100))

df = data.frame(name,course,gender,grades,marks)
df
str(df)

df[1,]
df[,1]
df$name
df$course

df$name = as.character(df$name)
str(df)

df$grades = factor(df$grades, ordered=T, levels=c('F','E','D','C','B','A'))
df$grades

df$gender = factor(df$gender, ordered = T)
df$gender = factor(df$gender, ordered = T, levels=c('M','F'))
df$gender

#xx----

(L1 = letters[1:26])
(L2 = LETTERS[1:26])
(M1 = month.abb[1:12])
(M2 = month.name[1:12])

sample(L1,2)
sample(L1,30) #error since only 26 letters are there
sample(L1, 30, replace=T) #can take a letter more than one times now, so no prob

# ctrl+L to clear the lower area

sample(M1)
sample(M1,5)

set.seed(10)
sample(M1,5) #nos. generated now set to the seed(10)
sample(M1,5)
set.seed(10)
sample(M1,5) #now same sample again as was set in seed(10)

sample(M1,5)
set.seed(10)
sample(M1,5) #???Doubt here

(grades = LETTERS[1:5])
(sgrades = sample(grades, 20, replace=T, prob=c(0.4,0.2,0.2,0.1,0.1)))
table(sgrades)
