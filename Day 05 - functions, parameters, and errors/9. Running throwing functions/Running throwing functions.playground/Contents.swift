import Cocoa

//Running throwing functions
//Swift doesn’t like errors to happen when your program runs, which means it won’t let you run an error-throwing function by accident.

//Instead, you need to call these functions using three new keywords: do starts a section of code that might cause problems, try is used before every function that might throw an error, and catch lets you handle errors gracefully.

//If any errors are thrown inside the do block, execution immediately jumps to the catch block. Let’s try calling checkPassword() with a parameter that throws an error👇
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
    print("That password is good!")
} catch {
    print("You can't use that password.")
}
