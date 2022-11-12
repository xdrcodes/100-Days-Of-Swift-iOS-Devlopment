import Cocoa

//Typecasting
//Swift must always know the type of each of your variables, but sometimes you know more information than Swift does. For example, here are three classes👇
class Animal {}
class Fish: Animal {}

class Dog: Animal {
    func makeNoise() {
        print("Woof!")
    }
}
//We can create a couple of fish and a couple of dogs, and put them into an array, like this:
let pets = [Fish(), Dog(), Fish(), Dog(), Dog()]
//Swift can see both Fish and Dog inherit from the Animal class, so it uses type inference to make pets an array of Animal.

//If we want to loop over the pets array and ask all the dogs to bark, we need to perform a typecast: Swift will check to see whether each pet is a Dog object, and if it is we can then call makeNoise().

//This uses a new keyword called as?, which returns an optional: it will be nil if the typecast failed, or a converted type otherwise.

//Here’s how we write the loop in Swift👇
for pet in pets {
    if let dog = pet as? Dog {
        dog.makeNoise()
    }
}


