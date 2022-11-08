import Cocoa

//Arithmetic operators - Operators are those little mathematical symbols like + and -, and swift has a huge range of them.

let firstScore = 12
let secondScore = 4

//We can add and subtract using + and -
let total = firstScore + secondScore
let difference = firstScore - secondScore

//We can multiply and divide using * and /
let product = firstScore * secondScore
let divident = firstScore / secondScore

//Swift has a special operator for calculating remainders after division: %. It calculates how many times one number can fit inside another, then sends back the value that’s left over.
//For example, we set secondScore to 4, so if we say 13 % secondScore we’ll get back one, because 4 fits into 13 three times with remainder one👇
let remainder = 13 % secondScore
let remainder1 = 15 % 3
let remainder2 = 15 % 4
