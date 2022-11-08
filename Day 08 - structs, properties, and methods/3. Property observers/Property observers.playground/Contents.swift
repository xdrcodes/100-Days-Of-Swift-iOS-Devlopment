import Cocoa

//Property observers
//Property observers let you run code before or after any property changes. To demonstrate this, we'll write a Progress struct that tracks a task and a completion percentage:
struct Progress {
    var task: String
    var amount: Int {
//Skip this part till the curly braces end, we will get back to this at the end.
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}
//We can now create an instance of that struct and adjust its progress over time:
var progress = Progress(task: "Loading data", amount: 0)
progress.amount = 30
progress.amount = 80
progress.amount = 100
//what we want to happen is for Swift to print a message every time amount changes, and we can use a didSet property observer for that. This will run some code every time amount changes☝️At the top inside the struct Progress.
//You can also use willSet to take action before a property changes, but that is rarely used.

