import Cocoa

//Final classes
//Although class inheritance is very useful - and in fact large parts of Apple's platforms require you to use it - sometimes you want to disallow other developers from building their own class based on yours.
//Swift gives us a final keyword just for this purpose: when you declare a class as being final, no other class can inherit from it. This means they can't override your methods in order to change your behavior - they need to use your class the way it was written.
//To make a class final just put the final keyword before it, like this👇
final class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
