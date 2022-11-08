import Cocoa

//Initializers
//Initializers are special methods that provide different ways to create your struct. All structs come with one by default, called their memberwise initializer - this asks you to provide a value for each property when you create the struct.
//You can see this if we create a User struct that has one property👇


//struct User {
    //var username: String
//}
//Line 8 - 10 are not a part of code because we will use the same code with other added lines below.

//When we create one of those structs, we must provide a username👇
//var user = User(username: "Ignition")
//We can provide our own initializer to replace the default one. For example, we might want to create all new users as "Anonymous" and print a message, like this👇
struct User {
    var username: String
    
    init() {
        username = "Anonymous"
        print("Creating a new user!")
    }
}
//You don't write func before initializers, but you do need to make sure all properties have a value before the initializer ends.
//Now our initializer accepts no parameters, we need to create the struct like this👇
var user = User()
user.username = "Ignition"
