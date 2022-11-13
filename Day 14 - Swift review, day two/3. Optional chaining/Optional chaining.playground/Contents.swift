import Cocoa
import Foundation

//Optional chaining
//Working with optionals can feel a bit clumsy sometimes, and all the unwrapping and checking can become so onerous that you might be tempted to throw some exclamation marks to force unwrap stuff so you can get on with work. Be careful, though: if you force unwrap an optional that doesn't have a value, your code will crash.

//Swift has two techniques to help make your code less complicated. The first is called optional chaining, which lets you run code only if your optional has a value. Put the below code into your playground to get us started👇
func albumReleased(year: Int) -> String? {
    switch year {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    case 2012: return "Red"
    case 2014: return "1989"
    default: return nil
    }
}

let album = albumReleased(year: 2006)
print("The album is \(album)")
//That will output "The album is Optional("Taylor Swift")" into the results pane.

//If we wanted to convert the return value of albumReleased() to be uppercase letters (that is, "TAYLOR SWIFT" rather than "Taylor Swift") we could call the uppercased() method of that string. For example👇
let str = "Hello world"
print(str.uppercased())

//The problem is, albumReleased() returns an optional string: it might return a string or it might return nothing at all. So, what we really mean is, "if we got a string back make it uppercase, otherwise do nothing." And that's where optional chaining comes in, because it provides exactly that behavior.

//Try changing the last two lines of code to this👇
let Album = albumReleased(year: 2006)?.uppercased()
print("The album is \(Album)")
//Note that there's a question mark in there, which is the optional chaining: everything after the question mark will only be run if everything before the question mark has a value. This doesn't affect the underlying data type of album, because that line of code will now either return nil or will return the uppercase album name – it's still an optional string.

//Your optional chains can be as long as you need, for example👇


//let album1 = albumReleased(year: 2006)?.someOptionalValue?.someOtherOptionalValue?.whatever
//Swift will check them from left to right until it finds nil, at which point it stops.

//THE NIL COALESCING OPERATOR
//Nil coalescing makes your code much simpler and safer, and yet has such a grandiose name that many people are scared of it. This is a shame, because the nil coalescing operator will make your life easier if you take the time to figure it out!

//What it does is let you say "use value A if you can, but if value A is nil then use value B." That's it. It's particularly helpful with optionals, because it effectively stops them from being optional because you provide a non-optional value B. So, if A is optional and has a value, it gets used (we have a value.) If A is present and has no value, B gets used (so we still have a value). Either way, we definitely have a value.

//To give you a real context, try using this code in your playground👇
let album2 = albumReleased(year: 2022) ?? "unknown"
print("The album is \(album2)")
//That double question mark is the nil coalescing operator, and in this situation it means "if albumReleased() returned a value then put it into the album variable, but if albumReleased() returned nil then use 'unknown' instead."

//If you look in the results pane now, you'll see "The album is Taylor Swift" printed in there – no more optionals. This is because Swift can now be sure it will get a real value back, either because the function returned one or because you're providing "unknown". This in turn means you don't need to unwrap anything or risk crashes: you're guaranteed to have real data to work with, which makes your code safer and easier to work with.




