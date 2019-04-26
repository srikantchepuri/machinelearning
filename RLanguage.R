#Data Types - Vector, Matrices, Arrays, List, Dat Frame

#Vector - sequence of data elements of the same basic type , there are five atomic vectors - logical, integer, numeric, complex, character 

#Logical 
vtr1 = c(TRUE,FALSE)
#Numerical
vtr2=c(13,23,13.23,23.13)

#Integer
Vtr3=c(13L,23L)


#Mix of evreything
Vtr4=c(TRUE,23,13,13.23)
Vtr5=c("Hello",FALSE,23,13.23)

class(vtr1)
class(vtr2)

#Converts all the variables having different datatypes to a common datatype


#Matrix 
#Matrices are R objects in which elements are arranged in a two dimentional rectangular layout
#matrix(data,nrow,ncol,byrow,dimnames)
#data - input vector which becomes the data elements of the matrix
#nrow - number of rows to be created
#ncol - number of columns to be created
#byrow - is a logical clue, if TRUE then input vector elements are arranged by row
#dimname - is used to assign the names for rows and columns

mtr=matrix(c(5:29),5,5)


#Array 
#Arrays are R data objects that can store data in more than two dimentions
#array(data,dim,dimnames)

arr1=array(c(0:15),dim=c(4,4,2,2))

arr2=array(c(1:9), dim=c(3,3,4,2))

#Lists 
#Lists are R objects which contain elements of different types like - numbers, strings, vectors and another lists inside it.
#list(data)
#you can store the elemts of different data types that can retain their data types

vtr6=c(23,13)
vtr7=c("Hellow","World")

mylist=list(vtr6,vtr7)

#Data Frame
#Data Frame is a table or a two dimentional array like structure in which each column contains values of one variable 
#and each row contains one set of values from each column

vtr8=c(1:5)
vtr9=c("Sri","Sai","Usher","Ram","Shiva")
vtr10=c(13,13.1,13.2,13.3,13.4)

df1=data.frame(vtr8,vtr9,vtr10)

data.frame(airquality)


#Operators

#Arithmetic Operators
print(8+5)

print (8%%5)

print (2^5)

#Floor Division
print(22%/%7)
print(3.9%/%2)

#Relational Operations - ==,!=,<,>,>=,<=

var1 =13
var2 =23

print (var1==var2)

#Assignemnet Operators
#Left Assignement and Right Assignement 
x=5
20 = y

#Logical Operators
#And Not Or
vector1 =c(TRUE,FALSE,TRUE,FALSE)
vector2=c(TRUE,TRUE,FALSE,FALSE)

print(vector1&vector2)

print(vector1|vector2)

print(vector1&&vector2)

print(!vector1)


#Conditional Statements

a1=23
a2=32

if(a1+a2>50){
  
  print("value is greater than 50")
} else if (a1+a2>25){
  
  print("value is greater than 25")
} else 
{
  print ("value is less than 25")
}



x <- 0
if (x < 0) {
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else
  print("Zero")

#Switch (statement,list)

switch(2, '1'="red",'2'="green",'3'="blue")
switch(2,"red","green","blue","invalid input")



#Loops
 
#Repeat repeat { commands if(condition){break} }  - like do while loop

x=5 
repeat{
  
  print(x)
  x=x+2
  if(x>21)
  {break}
}


#While while(condition){ commands }
x=5
while(x<21)
{
  print(x)
  x=x+2
  
}

#For Loop
#for (value in vector){statements }

for (x in 1:25)
{
  print(x)
  
}


#Strings
#Any value that you write in single or double quotes is a string

str1 ="Hey Jude!"
print(str1)
str2='Hey Dude!'
print(str2)


#Concatenate
str3=paste(str1,str2)
print(str3)

nchar(str3)

#to upper
str4<-toupper(str3)
print(str4)

#to lower
str5<-tolower(str3)
print(str5)

#substrings
#substr(x, start, stop)
str6 <- substr(str3,5,6)
print(str6)

#substring(x, first, last=1000000)

x <- "1234567890"

substr(x, 5, 7)

substr(x, 4, 5) <- "AAA"
print(x)



#Functions 
#Predefined Functions 
fibo <- function(a)
{
  var1=0;
  var2=1;
  print (var1);
  print (var2);
  
  for(x in 1:a){
    
    var3=var1+var2;
    print(var3);
    var1=var2;
    var2=var3;
  }
}

fibo(5)
fibo(13)
fibo(23)
fibo(32)