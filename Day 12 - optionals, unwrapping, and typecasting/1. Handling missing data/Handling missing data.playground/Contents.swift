import Cocoa

//Handling missing data

//We’ve used types such as Int to hold values like 5. But if you wanted to store an age property for users, what would you do if you didn’t know someone’s age?

//You might say “well, I’ll store 0”, but then you would get confused between new-born babies and people whose age you don’t know. You could use a special number such as 1000 or -1 to represent “unknown”, both of which are impossible ages, but then would you really remember that number in all the places it’s used?

//Swift’s solution is called optionals, and you can make optionals out of any type. An optional integer might have a number like 0 or 40, but it might have no value at all – it might literally be missing, which is nil in Swift.

//To make a type optional, add a question mark after it. For example, we can make an optional integer like this👇
var age: Int? = nil
//That doesn't hold any number - it holds nothing. But if we later learn that age, we can use it👇
age = 38
