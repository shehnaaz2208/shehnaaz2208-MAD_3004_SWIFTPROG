//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("Value of str",str)

var number = 10
print("number = ",number)

//str = 20
print("Anu","Simran","Prabhjeet",separator :"J")

var sum = number + 20
print("sum of \(number) and 20 is \(sum)")
//string interpolation

print("😋","☺️","😇", separator:"🍦")

var happy = "😆"
print("happy : \(happy)")

var temp : Int
temp = 30
//print("temperature : \(temp) cloudy")

if temp < 10 {
    print("cold")
}
else if (temp == 30) {
    print("hot")
} else {
    print("heat alert")
}
let PI : Float = 3.1429

print("PI = \(PI)")

//PI = 2.34

var task : String?

//task = "writing"

if task == nil{
    print("Yay...no task...just fun")
}else{
    print(task!)
}


var taskList : [String]
taskList = ["singing", "dancing","writing","eating",
            "sketching"]

for activity in taskList{
    print("perform \(activity)")
}




var itr = 1
while(itr < 5){
    print("itr : \(itr)")
    itr = itr + 1
}

itr = 10
repeat{
    print("itr : \(itr)")
    itr = itr + 10;
}while(itr <= 30)


itr = 100

switch itr {
case 1...9:
    print("one to nine")
case 10:
    print("ten")
    fallthrough
case 20:
    print("twenty")
case 30,40,50:
    print("thirty or forty or fifty")
case 60...100:
    print("sixty to hundred")
default:
    print("unreachable")
    
}


