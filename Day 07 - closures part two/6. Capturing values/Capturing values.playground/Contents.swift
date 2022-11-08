import Cocoa

//Capturing values
//If you use any external values inside your closure, swift captures them - stores them alongside the closure, so they can be modified even if they don't exist any more.
//Right now we have a travel() function that returns a closure, and the returned closure accepts a string as its only parameter and returns nothing👇
func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}
//We can call travel() to get back the closure, then call that closure freely👇
let result = travel()
result("London")

//Closure capturing happens if we create values in travel() that get used inside the closure. For example, we might want to track how often the returned closure is called👇
func Travel() -> (String) -> Void {
    var counter = 1
    
    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
//Even though that counter variable was created inside travel(), it gets captured by the closure so it will still remain alive for that closure.
//So, if we call result("London") multiple times, the counter will go up and up👇
let Result = Travel()
Result("London")
Result("London")
Result("London")
Result("London")
Result("London")
