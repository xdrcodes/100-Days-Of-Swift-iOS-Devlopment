import Cocoa

//Creating your own classes
//Classes are similar to structs in that they allow you to create new types with properties and methods, but they have five important differences and I'm going to walk you through each of those differences one at a time.
//The first difference between classes and structs is that classes never come with a memberwise initializer. This means if you have properties in your class, you must always create your own initializer.
//For example👇
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
//Creating instances of that class looks just the same as if it were a struct👇
let poppy = Dog(name: "Poppy", breed: "Poodle")
