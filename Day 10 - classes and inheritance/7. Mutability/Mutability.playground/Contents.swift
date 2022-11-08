import Cocoa

//Mutability
//The final difference between classes and structs is the way they deal with constants. If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.

//However, if you have a constant class with a variable property, that property can be changed. Because of this, classes don’t need the mutating keyword with methods that change properties; that’s only needed with structs.

//This difference means you can change any variable property on a class even when the class is created as a constant – this is perfectly valid code👇
class Singer {
    var name = "Taylor Swift"
}

let taylor = Singer()
taylor.name = "Ed Sheeran"
print(taylor.name)

//If you want to stop that from happening you need to make the property constant👇
class singer {
    let Name = "Taylor Swift"
}
