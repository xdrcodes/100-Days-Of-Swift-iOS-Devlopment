import Cocoa

//Creating basic closures
//Swift lets us use functions just like any other type such as strings and integers. This means you can create a function and assign it to a variable, call that function using that variable, and even pass that function into other functions as parameters.

//Functions used in this way are called closures, and although they work like functions they are written a little differently.

//Let’s start with a simple example that prints a message👇
let driving = {
    print("I'm driving in my car")
}
//That effectively creates a function without a name, and assigns that function to driving. You can now call driving() as if it were a regular function, like this:
driving()


