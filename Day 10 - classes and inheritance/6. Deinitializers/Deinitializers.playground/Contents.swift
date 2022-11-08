import Cocoa

//Deinitializers
//The fourth difference between classes and structs is that classes can have deinitializers – code that gets run when an instance of a class is destroyed.

//To demonstrate this, here’s a Person class with a name property, a simple initializer, and a printGreeting() method that prints a message👇
class Person {
    var name = "John Doe"
    
    init() {
        print("\(name) is alive")
    }
    
    func printGreeting() {
        print("Hello, I'm \(name)")
    }
}
//we're going to create a few instances of the Person class inside a loop, because each time the loop goes around a new person will be created then destroyed👇
for _ in 1...3 {
    let person = Person()
    person.printGreeting()
}
//And now for the deinitializer. This will be called when the Person instances is being destroyed👇

//deinit {
    //print("\(name) is no more!")
//}

//Lines 25-27 will be a part of code once the person instances is being destroyed.


