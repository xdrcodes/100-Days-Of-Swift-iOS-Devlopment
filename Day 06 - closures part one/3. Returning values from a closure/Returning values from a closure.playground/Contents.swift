import Cocoa

//Returning values from a closure
//Closures can also return values, and they are written similarly to parameters: you write them inside your closure, directly before the in keyword.

//To demonstrate this, we’re going to take our driving() closure and make it return its value rather than print it directly. Here’s the original👇
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
//We want a closure that returns a string rather than printing the message directly, so we need to use -> String before in, then use return just like a normal function👇
let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

//We can now run that closure and print its return value:
let message = drivingWithReturn("London")
print(message)

