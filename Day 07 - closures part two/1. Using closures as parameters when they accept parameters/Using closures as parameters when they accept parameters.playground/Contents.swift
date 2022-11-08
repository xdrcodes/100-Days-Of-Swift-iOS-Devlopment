import Cocoa

//Using closures as parameters when they accept parameters.
//This is where closures can start to be read a bit like line noise: a closure you pass into a function can also accept its own parameters.

//We’ve been using () -> Void to mean “accepts no parameters and returns nothing”, but you can go ahead and fill the () with the types of any parameters that your closure should accept.

//To demonstrate this, we can write a travel() function that accepts a closure as its only parameter, and that closure in turn accepts a string👇
func travel(action : (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived")
}
//Now when we call travel() using trailing closure syntax, our closure code is required to accept a string👇
travel { (place: String) in
    print("I'm going to \(place) in my car")
}


