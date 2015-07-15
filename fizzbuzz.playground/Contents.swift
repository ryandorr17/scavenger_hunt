//: Playground - noun: a place where people can play

import UIKit



for num in 1...100 {
if (num % 5 == 0) && (num % 3 == 0 ){
    println("Fizzbuzz")
}
else if num % 5 == 0 {
    println("fizz")
}
else if num % 3 == 0 {
    println("buzz")
}
else {
    println(num)
}
}