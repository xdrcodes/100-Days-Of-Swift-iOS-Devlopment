import Cocoa
import Foundation

//Optionals
//Swift is a very safe language, by which I mean it works hard to ensure your code never fails in surprising ways.

//One of the most common ways that code fails is when it tries to use data that is bad or missing. For example, imagine a function like this👇
func getHaterStatus() -> String {
    return "Hate"
}
//That function doesn't accept any parameters, and it returns a string: "Hate". But what if today is a particularly sunny day, and those haters don't feel like hating – what then? Well, maybe we want to return nothing: this hater is doing no hating today.

//Now, when it comes to a string you might think an empty string is a great way to communicate nothing, and that might be true sometimes. But how about numbers – is 0 an "empty number"? Or -1?

//Before you start trying to create imaginary rules for yourself, Swift has a solution: optionals. An optional value is one that might have a value or might not. Most people find optionals hard to understand, and that’s OK – I’m going to try explaining it in several ways, so hopefully one will work.

//For now, imagine a survey where you ask someone, “On a scale of 1 to 5 how awesome is Taylor Swift?” – what would someone answer if they had somehow never heard of her? 1 would be unfairly slating her, and 5 would be praising her when they had no idea who Taylor Swift was. The solution is optionals: “I don’t want to provide a number at all.”

//When we used -> String it means "this will definitely return a string," which means this function cannot return no value, and thus can be called safe in the knowledge that you'll always get a value back that you can use as a string. If we wanted to tell Swift that this function might return a value or it might not, we need to use this instead👇
func GetHatersStatus() -> String? {
    return "Hate"
}
//Note the extra question mark: String? means “optional string.” Now, in our case we're still returning “Hate” no matter what, but let's go ahead and modify that function further: if the weather is sunny, the haters have turned over a new leaf and have given up their life of hating, so we want to return no value. In Swift, this "no value" has a special name: nil.
//Change the function to this👇
func GETHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}
GETHaterStatus(weather: "Sunny")
//That accepts one string parameter (the weather) and returns one string (hating status), but that return value might be there or it might not – it's nil. In this case, it means we might get a string, or we might get nil.

//Now for the important stuff: Swift wants your code to be really safe, and trying to use a nil value is a bad idea. It might crash your code, it might screw up your app logic, or it might make your user interface show the wrong thing. As a result, when you declare a value as being optional, Swift will make sure you handle it safely.

//Let's try this now: add these lines of code to your playground👇


//var status: String
//status = GETHaterStatus(weather: "rainy")


//The first line creates a string variable, and the second assigns to it the value from getHaterStatus() – and today the weather is rainy, so those haters are hating for sure.

//That code will not run, because we said that status is of type String, which requires a value, but getHaterStatus() might not provide one because it returns an optional string. That is, we said there would definitely be a string in status, but getHaterStatus() might return nothing at all. Swift simply will not let you make this mistake, which is extremely helpful because it effectively stops a whole class of common bugs.

//To fix the problem, we need to make the status variable a String?, or just remove the type annotation entirely and let Swift use type inference. The first option looks like this👇
var status: String?
status = GETHaterStatus(weather: "rainy")
//And the second like this👇
var Status = GETHaterStatus(weather: "rainy")

//Regardless of which you choose, that value might be there or might not, and by default Swift won't let you use it dangerously. As an example, imagine a function like this👇
func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}
//That takes a string and prints a message depending on its contents. This function takes a String value, and not a String? value – you can't pass in an optional here, it wants a real string, which means we can't call it using the status variable we made.

//Swift has two solutions. Both are used, but one is definitely preferred over the other. The first solution is called optional unwrapping, and it's done inside a conditional statement using special syntax. It does two things at the same time: checks whether an optional has a value, and if so unwraps it into a non-optional type then runs a code block.

//The syntax looks like this👇
if let unwrappedStatus = Status {
    // unwrappedStatus contains a non-optional value!
} else {
    // in case you want an else block, here you go..
}

//These if let statements check and unwrap in one succinct line of code, which makes them very common. Using this method, we can safely unwrap the return value of getHaterStatus() and be sure that we only call takeHaterAction() with a valid, non-optional string. Here's the complete code👇
func gethaterStatus(weather: String) -> String? {
    if weather == "Sunny" {
        return nil
    } else {
        return "Hate"
    }
}

func takehaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}

if let haterStatus = gethaterStatus(weather: "Rainy") {
    takehaterAction(status: haterStatus)
}
//If you understand this concept, you're welcome to skip down to the title that says "Force unwrapping optionals". If you're still not quite sure about optionals, carry on reading.

//Okay, if you're still here it means the explanation above either made no sense, or you sort of understood but could probably use some clarification. Optionals are used extensively in Swift, so you really do need to understand them. I'm going to try explaining again, in a different way, and hopefully that will help!

//Here's a new function👇
func yearAlbumReleased(name: String) -> Int {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014}
    
    return 0
}
yearAlbumReleased(name: "Lantern")
//That takes the name of a Taylor Swift album, and returns the year it was released. But if we call it with the album name "Lantern" because we mixed up Taylor Swift with Hudson Mohawke (an easy mistake to make, right?) then it returns 0 because it's not one of Taylor's albums.

//But does 0 make sense here? Sure, if the album was released back in 0 AD when Caesar Augustus was emperor of Rome, 0 might make sense, but here it's just confusing – people need to know ahead of time that 0 means “not recognized.”

//A much better idea is to rewrite that function so that it either returns an integer (when a year was found) or nil (when nothing was found), which is easy thanks to optionals. Here's the new function👇
func YearAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return nil
}
YearAlbumReleased(name: "Lantern")
//Now that it returns nil, we need to unwrap the result using if let because we need to check whether a value exists or not.

//If you understand the concept now, you're welcome to skip down to the title that says “Force unwrapping optionals”. If you're still not quite sure about optionals, carry on reading.

//Okay, if you're still here it means you're really struggling with optionals, so I'm going to have one last go at explaining them.

//Here's an array of names👇
var items = ["James", "John", "Sally"]
//If we wanted to write a function that looked in that array and told us the index of a particular name, we might write something like this👇
func position(of string: String, in array: [String]) -> Int {
    for i in 0..<array.count {
        if array[i] == string {
            return i
        }
    }
    
    return 0
}
//That loops through all the items in the array, returning its position if it finds a match, otherwise returning 0.

//Now try running these four lines of code👇
let jamesPosition = position(of: "James", in: items)
let johnPosition = position(of: "John", in: items)
let sallyPosition = position(of: "Sally", in: items)
let bobPosition = position(of: "Bob", in: items)
//That will output 0, 1, 2, 0 – the positions of James and Bob are the same, even though one exists and one doesn't. This is because I used 0 to mean "not found." The easy fix might be to make -1 not found, but whether it's 0 or -1 you still have a problem because you have to remember that specific number means “not found.”

//The solution is optionals: return an integer if you found the match, or nil otherwise. In fact, this is exactly the approach the built-in "find in array" methods use: someArray.firstIndex(of: someValue).

//When you work with these "might be there, might not be" values, Swift forces you to unwrap them before using them, thus acknowledging that there might not be a value. That's what if let syntax does: if the optional has a value then unwrap it and use it, otherwise don't use it at all. You can’t use a possibly-empty value by accident, because Swift won’t let you.

//If you're still not sure how optionals work, then the best thing to do is ask me on Twitter and I'll try to help: you can find me @twostraws.


//FORCE UNWRAPPING OPTIONS
//Swift lets you override its safety by using the exclamation mark character: !. If you know that an optional definitely has a value, you can force unwrap it by placing this exclamation mark after it.

//Please be careful, though: if you try this on a variable that does not have a value, your code will crash.

//To put together a working example, here's some foundation code👇
func YearsAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }
    
    return nil
}

var year = YearsAlbumReleased(name: "1989")

if year == nil {
    print("There was an error")
} else {
    print("It was released in \(year)")
}
//That gets the year an album was released. If the album couldn't be found, year will be set to nil, and an error message will be printed. Otherwise, the year will be printed.

//Or will it? Well, yearAlbumReleased() returns an optional integer, and this code doesn't use if let to unwrap that optional. As a result, it will print out the following: "It was released in Optional(2012)" – probably not what we wanted!

//At this point in the code, we have already checked that we have a valid value, so it's a bit pointless to have another if let in there to safely unwrap the optional. So, Swift provides a solution – change the second print() call to this👇
print("It was released in \(year!)")
//Note the exclamation mark: it means "I'm certain this contains a value, so force unwrap it now."

//Broadly speaking force unwrapping optionals is frowned upon – if you find yourself doing it frequently you might want to rethink your approach.


//IMPLICITLY UNWRAPPED OPTIONALS
//You can also use this exclamation mark syntax to create implicitly unwrapped optionals, which is where some people really start to get confused. So, please read this carefully!

//A regular variable must contain a value. Example: String must contain a string, even if that string is empty, i.e. "". It cannot be nil.
//An optional variable might contain a value, or might not. It must be unwrapped before it is used. Example: String? might contain a string, or it might contain nil. The only way to find out is to unwrap it.
//An implicitly unwrapped optional might contain a value, or might not, but it does not need to be unwrapped before it is used. Swift won't check for you, so you need to be extra careful. Example: String! might contain a string, or it might contain nil – and it's down to you to use it appropriately. It’s like a regular optional, but Swift lets you access the value directly without the unwrapping safety. If you try to do it, it means you know there’s a value there – but if you’re wrong your app will crash.

//The main times you're going to meet implicitly unwrapped optionals is when you're working with user interface elements in UIKit on iOS or AppKit on macOS. These need to be declared up front, but you can't use them until they have been created – and Apple likes to create user interface elements at the last possible moment to avoid any unnecessary work. Having to continually unwrap values you definitely know will be there is annoying, so these are made implicitly unwrapped.

//on't worry if you find implicitly unwrapped optionals a bit hard to grasp – it will become clear as you work with the language, and you’ll be pleased to know they are rare in SwiftUI projects.
