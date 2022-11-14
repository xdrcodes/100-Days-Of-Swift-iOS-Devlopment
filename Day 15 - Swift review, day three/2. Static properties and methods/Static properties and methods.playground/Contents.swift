import Cocoa

//Static properties and methods
//Swift lets you create properties and methods that belong to a type, rather than to instances of a type. This is helpful for organizing your data meaningfully by storing shared data.

//Swift calls these shared properties “static properties”, and you create one just by using the static keyword. Once that's done, you access the property by using the full name of the type. Here's a simple example👇
struct TaylorFan {
    static var favouriteSong = "Look What You Made Me Do"
    
    var name: String
    var age: Int
}

let fan = TaylorFan(name: "james", age: 25)
print(TaylorFan.favouriteSong)
//So, a Taylor Swift fan has a name and age that belongs to them, but they all have the same favorite song.

//Because static methods belong to the struct itself rather than to instances of that struct, you can't use it to access any non-static properties from the struct.


