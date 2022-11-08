import Cocoa

//Overriding methods
//Child classes can replace parent methods with their own implementations - a process known as overriding. Here's a trivial Dog class with a makeNoice() method👇
class Dog {
    func makeNoise() {
        print("Woof!")
    }
}
//If we create a new Poodle class that inherits from Dog, it will inherit the makeNoise() method. So, this will print "Woof!"👇
class Poodle: Dog {
    
}

let poppy = Poodle()
poppy.makeNoise()
//Method overriding allows us to change the implementation of makeNoice() for the Poodle class.
//Swift requires us to use overriding func rather than just func when overriding a method - it stops you from overriding a method by accident, and you'll get an error if you try to override something that doesn't exist on the parent class
class poodle: Dog {
    override func makeNoise() {
        print("Yip")
    }
}
let Poppy = poodle()
Poppy.makeNoise()
//With that change, poppy.makeNoice() will print "Yip!" rather than "Woof!"

