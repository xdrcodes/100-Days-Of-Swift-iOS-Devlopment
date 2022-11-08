import Cocoa

//Shorthand parameter name
//We just made a travel() function. It accepts one parameter, which is a closure that itself accepts one parameter and returns a string. That closure is then run between two calls to print().

//Here's that in code👇
func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived")
}
//We can call travel() using something like this👇
travel {(place: String) -> String in
    return "I'm going to \(place) in my car"
}
//However, Swift knows the parameter to that closure must be a string, so we can remove it👇
travel { place -> String in
    return "I'm going to \(place) in my car"
}
//It also knows the closure must return a string, so we can remove that👇
travel { place in
    return "I'm going to \(place) in my car"
}
//As the closure only has one line of code that must be the one that returns the value, so Swift lets us remove the return keyword too👇
travel { place in
    "I'm going to \(place) in my car"
}
