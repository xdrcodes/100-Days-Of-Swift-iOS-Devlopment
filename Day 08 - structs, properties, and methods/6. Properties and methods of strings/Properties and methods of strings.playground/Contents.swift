import Cocoa

//Properties and methods of strings
//We've used lots of strings so far, and it turns out they are structs - they have their own methods and properties we can use to query and manipulate the string.
//First, let's creat a test string👇
let string = "Do or do not, there is no try."
//You can read the number of characters in a string using its count property👇
print(string.count)
//They have a hasPrefix() method that returns true if the string starts with specific letters👇
print(string.hasPrefix("Do"))
//You can uppercase a string by calling its uppercased() method👇
print(string.uppercased())
//And you can even have Swift sort the letters of the string into an array👇
print(string.sorted())
//String have lots more properties and methods - try typing string. to bring up Xcode's code completion options.
