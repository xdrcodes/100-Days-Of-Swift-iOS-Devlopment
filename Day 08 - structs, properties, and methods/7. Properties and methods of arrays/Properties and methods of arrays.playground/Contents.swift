import Cocoa

//Properties and methods of arrays
//Arrays are also structs, which means they too have their own methods and properties we can use to query and manipulate the array.
//Here's a simple array to get us started👇
var toys = ["Woody"]
//You can read the number of items in an array using its count property👇
print(toys.count)
//If you want to add a new item, use the append() method like this:
toys.append("Buzz")
//You can locate any item inside an array using its firstIndex() method, like this:
toys.firstIndex(of: "Buzz")
//That will return 1 because arrays count from 0
//Just like with strings, you can have Swift sort the items of the array alphabetically👇
print(toys.sorted())
//Finally, if you want to remove an item, use the remove() method like this👇
toys.remove(at: 0)
//Array have lots more properties and methods - try typing toys. to bring up Xcode's code completion options.
