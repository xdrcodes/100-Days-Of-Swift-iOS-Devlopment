import Cocoa

//Structs
//Structs are complex data types, meaning that they are made up of multiple values. You then create an instance of the struct and fill in its values, then you can pass it around as a single value in your code. For example, we could define a Person struct type that contains two properties: clothes and shoes👇
struct Person {
    var clothes: String
    var shoes: String
}
//When you define a struct, Swift makes them very easy to create because it automatically generates what's called a memberwise initializer. In plain speak, it means you create the struct by passing in initial values for its two properties, like this👇
let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
//Once you have created an instance of a struct, you can read its properties just by writing the name of the struct, a period, then the property you want to read👇
print(taylor.clothes)
print(other.shoes)
//If you assign one struct to another, Swift copies it behind the scenes so that it is a complete, standalone duplicate of the original. Well, that's not strictly true: Swift uses a technique called "copy on write" which means it only actually copies your data if you try to change it.

//To help you see how struct copies work, put this into your playground👇
struct person {
    var Clothes: String
    var Shoes: String
}

let Taylor = person(Clothes: "T-shirts", Shoes: "Sneakers")
let Other = person(Clothes: "short skirts", Shoes: "high heels")

var taylorCopy = Taylor
taylorCopy.Shoes = "flip flops"

print(Taylor)
print(taylorCopy)
//That creates two Person structs, then creates a third one called taylorCopy as a copy of taylor. What happens next is the interesting part: the code changes taylorCopy, and prints both it and taylor. If you look in your results pane (you might need to resize it to fit) you'll see that the copy has a different value to the original: changing one did not change the other.



//FUNCTIONS INSIDE STRUCTS
//You can place functions inside structs, and in fact it’s a good idea to do so for all functions that read or change data inside the struct. For example, we could add a function to our Person struct to describe what they are wearing, like this👇

struct PERSON {
    var CLOTHES: String
    var SHOES: String
    
    func describe() {
        print("I like wearing \(CLOTHES) with \(SHOES)")
    }
}
let TAYLOR = PERSON(CLOTHES: "T-shirts", SHOES: "sneakers")

TAYLOR.describe()
//There’s one more thing you ought to know but can't see in that code: when you write a function inside a struct, it's called a method instead. In Swift you write func whether it's a function or a method, but the distinction is preserved when you talk about them.
