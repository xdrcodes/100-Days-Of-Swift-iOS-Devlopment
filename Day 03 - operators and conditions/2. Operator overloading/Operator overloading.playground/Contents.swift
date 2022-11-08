import Cocoa

//Operator overloading - Swift supports operator overloading, which is a fancy way of saying that what an operator does depends on the values you use it with. For example, + sums integers like this👇
let one = 37
let two = 37 + 37

//But + also joins strings, like this👇
let fakers = "Fakers gonna "
let action = fakers + "fake"

//You can even use + to join arrays, like this👇
let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

//Remember, Swift is a type-safe language , which means it won't let you mix types. For example, you can't add an integer to a string because it doesn't make any sense.

