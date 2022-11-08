import Cocoa

//Writing functions - Functions let us wrap up pieces of code so they can be used in lot of places. We can send data into dunctions to customize how they work, and get back data that tells us the result that was calculated.

//Functions let us-use code, which means we can write a function to do something interesting then run that dunction from lots of places. Repeating code is generally a bad idea, and functions help us avoid doing that.

//To start with, we’re going to write a function that prints help information for users of our app. We might need this anywhere in our app, so having it as a function is a good idea.

//Swift functions start with the func keyword, then your function name, then open and close parentheses. All the body of your function – the code that should be run when the function is requested – is placed inside braces.

//Let’s write the printHelp() function now👇
func printHelp() {
    let message = """
Welcome to MyApp!

Run this app inside a directory of images and MyApp will resize them all into thumbnails
"""
    
    print(message)
}
//We can now run that using printHelp() by itself:
printHelp()
