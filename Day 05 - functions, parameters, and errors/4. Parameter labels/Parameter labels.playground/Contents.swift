import Cocoa

//Parameter labels
//We wrote our square() function like this👇
func square(number: Int) -> Int {
    return number * number
}
//That makes its parameter number, so we can use number inside the function to refer to it, but we must also use the name when running the function, like this:
let result = square(number: 8)

//Swift lets us provide two names for each parameter: one to be used externally when calling the function, and one to be used internally inside the function. This is as simple as writing two names, separated by a space.

//To demonstrate this, here’s a function that uses two names for its string parameter👇

func sayHello(to name: String) {
    print("Hello, \(name)!")
}
//The parameter is called to name, which means externally it’s called to, but internally it’s called name. This gives variables a sensible name inside the function, but means calling the function reads naturally👇

sayHello(to: "Taylor")
