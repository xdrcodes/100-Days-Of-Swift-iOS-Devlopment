import Cocoa

//Mutating methods
//If a struct has a variable property but the instance of the struct was created as a constant, that property can't be changed - the struct is constant, so all it's properties are also constant regardless of how they were created.

//The problem is that when you create the struct Swift has no idea whether you will use it with constants or variables, so by default it takes the safe approach: Swift won't let you write methods that change properties unless you specifically request it.

//When you want to change a property inside a method, you need to mark it using the mutating keyword, like this👇
struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
//Because it changes the property, Swift will only allow that method to be called on Person instances that are variables👇
var person = Person(name: "Ed")
person.makeAnonymous()
