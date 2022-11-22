import Cocoa

//Capture lists in Swift: what’s the difference between weak, strong, and unowned references?

//Capture lists come before a closure’s parameter list in your code, and capture values from the environment as either strong, weak, or unowned. We use them a lot, mainly to avoid strong reference cycles – aka retain cycles.

//Deciding which to use isn’t easy when you’re learning, so you can spend time trying to figure out strong vs weak, or weak vs unowned, but as you progress with your learning you’ll start to realize there’s often only one right choice.

//First, let’s take a look at the problem. First, here’s a simple class👇

class Singer {
    func playSong() {
        print("Shake it off!")
    }
}

//Second, here’s a function that creates an instance of Singer, creates a closure that uses the singer’s playSong() method, and returns that closure for us to use elsewhere👇

func sing() -> () -> Void {
    let taylor = Singer()

    let singing = {
        taylor.playSong()
        return
    }

    return singing
}

//Finally, we can call sing() to get back a function we can call wherever we want to have playSong() printed👇

let singFunction = sing()
singFunction()

