import Cocoa

//Variables and constants
//Every useful program needs to store data at some point, and in Swift there are two ways to do it: variables and constants. A variable is a data store that can have its value changed whenever you want, and a constant is a data store that you set once and can never change. So, variables have values that can vary, and constants have values that are constant – easy, right?

//Having both these options might seem pointless, after all you could just create a variable then never change it – why does it need to be made a constant? Well, it turns out that many programmers are – shock! – less than perfect at programming, and we make mistakes.

//One of the advantages of separating constants and variables is that Xcode will tell us if we’ve made a mistake. If we say, "make this date a constant, because I know it will never change" then 10 lines later try to change it, Xcode will refuse to build our app.

//Constants are also important because they let Xcode make decisions about the way it builds your app. If it knows a value will never change, it is able to apply optimizations to make your code run faster.

//In Swift, you make a variable using the var keyword, like this👇

var name = "Tim McGraw"

//Let’s put that into a playground so you can start getting feedback. Delete everything in there apart from the import UIKit line (that's the bit that pulls in Apple's core iOS framework and it's needed later on), and add that variable.

//Because this is a variable, you can change it whenever you want, but you shouldn't use the var keyword each time – that's only used when you're declaring new variables. Try writing this👇

var Name = "Tim McGraw"
Name = "Romeo"

//So, the first line creates the name variable and gives it an initial value, then the second line updates the name variable so that its value is now "Romeo". You'll see both values printed in the results area of the playground.

//Now, what if we had made that a constant rather than a variable? Well, constants use the let keyword rather than var, so you can change your first line of code to say let name rather than var name like this👇

let NAME = "Tim McGraw"
//NAME "Romeo"

//But now there's a problem: Xcode will show a red warning next to line three, and it should have drawn a red underline underneath your code. Xcode’s message is “Cannot assign to value: 'name' is a 'let' constant”, which is Xcode-speak for "you're trying to change a constant and you can't do that."

//So, constants are a great way to make a promise to Swift and to yourself that a value won't change, because if you do try to change it Xcode will refuse to run. Swift developers have a strong preference to use constants wherever possible because it makes your code easier to understand. In fact, Xcode will actually tell you if you make something a variable then never change it!

//Important note: variable and constant names must be unique in your code. You'll get an error if you try to use the same variable name twice, like this:

var NAMES = "Tim McGraw"
//var NAMES = "Romeo"

//If the playground finds an error in your code, it will either flag up a warning in a red box, or will just refuse to run. You'll know if the latter has happened because the text in the results pane has gone gray rather than its usual black.



