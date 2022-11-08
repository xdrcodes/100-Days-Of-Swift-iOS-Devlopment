import Cocoa

//Accepting parameters in a closure
//When you create closures, they don’t have a name or space to write any parameters. That doesn’t mean they can’t accept parameters, just that they do so in a different way: they are listed inside the open braces.

//To make a closure accept parameters, list them inside parentheses just after the opening brace, then write in so that Swift knows the main body of the closure is starting.

//For example, we could make a closure that accepts a place name string as its only parameter like this👇
let driving = { (place: String) in
    print("I'm going to \(place) in my car")
}
//One of the differences between functions and closures is that you don’t use parameter labels when running closures. So, to call driving() now we’d write this👇
driving("London")
