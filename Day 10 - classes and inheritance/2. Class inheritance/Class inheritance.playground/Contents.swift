import Cocoa
import Foundation

//Class inheritance
//The second difference between classes and structs is that you can create a class bases on an existing class - it inherits all the properties and methods of the original class, and can add its own on top.
//This is called class inheritance or subclassing, the class you inherit from is called the "parent" or "super" class, and the new class is called the "child" class.
//Here's the Dog class we just created👇
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
//we could create a new class based on that one called Poodle. It will inherit the same properties and initializer as Dog by default👇
class Poodle: Dog {
    
}
//However, we can also give Poodle its own initializer. we know it will always have the breed "Poodle", so we can make a new initializer that only needs a name property. Even better, we can make the Poodle initializer call the Dog initializer directly so that all the setup happens👇
class poodle: Dog {
    init(Name: String) {
        super.init(name: Name, breed: "poodle")
    }
}
//For safety reasons, Swift always makes you call super.init() from child classes-just in case the parent class does some important work when it's created.
