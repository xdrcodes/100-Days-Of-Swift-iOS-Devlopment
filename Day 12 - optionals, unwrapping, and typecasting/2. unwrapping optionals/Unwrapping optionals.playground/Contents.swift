import Cocoa

//Unwrapping optionals
//Optional strings might contain a string like “Hello” or they might be nil – nothing at all.

//Consider this optional string👇
var name: String? = nil
var Name: String? = "Subham Kr. Paul"
//What happens if we use name.count? A real string has a count property that stores how many letters it has, but this is nil – it’s empty memory, not a string, so it doesn’t have a count.

//Because of this, trying to read name.count is unsafe and Swift won’t allow it. Instead, we must look inside the optional and see what’s there – a process known as unwrapping.

//A common way of unwrapping optionals is with if let syntax, which unwraps with a condition. If there was a value inside the optional then you can use it, but if there wasn’t the condition fails.

//For example👇
if let unwrapped = name {
    print("\(unwrapped.count) letters")
} else {
    print("Missing name.")
}
if let Unwrapped = Name {
    print("\(Unwrapped.count) letters")
} else {
    print("Missing Name.")
}
//If name holds a string, it will be put inside unwrapped as a regular String and we can read its count property inside the condition. Alternatively, if name is empty, the else code will be run.

