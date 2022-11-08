import Cocoa

//Referring to the current instance
//Inside method you get a special constant called self, which points to whatever instance of the struct is currently being used. This self value is particularly useful when you creat initializers thatbhave the same parameter names as your property.
//For example, if you create a Person struct with a name property, then tried to write an initializer that accepted a name parameter, self helps you distinguish between the property and the parameter - self.name refers to the property, whereas name refers to the parameter.
//Here's that in code👇
struct Person {
    var name: String
    
    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}
