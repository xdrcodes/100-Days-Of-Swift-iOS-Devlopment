import Cocoa

//Optional try

//Back when we were talking about throwing functions, we looked at this code👇
enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    
    
    return true
}

do {
    try checkPassword("password")
    print("That password is good")
} catch {
    print("You can't use that password.")
}
//That runs a throwing function, using do, try, and catch to handle errors gracefully.

//There are two alternatives to try, both of which will make more sense now that you understand optionals and force unwrapping.

//The first is try?, and changes throwing functions into functions that return an optional. If the function throws an error you’ll be sent nil as the result, otherwise you’ll get the return value wrapped as an optional.

//Using try? we can run checkPassword() like this👇
if let result = try? checkPassword("password") {
    print("Result was \(result)")
} else {
    print("D'oh.")
}
//The other alternative is try!, which you can use when you know for sure that the function will not fail. If the function does throw an error, your code will crash.

//Using try! we can rewrite the code to this👇
try! checkPassword("sekrit")
print("Ok!")



