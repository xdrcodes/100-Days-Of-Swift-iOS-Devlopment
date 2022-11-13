import Cocoa

//String Interpolation
//This is a fancy name for what is actually a very simple thing: combining variables and constants inside a string.
var name = "Tim McGraw"

//If we wanted to print out a message to the user that included their name, string interpolation is what makes that easy: you just write a backslash, then an open parenthesis, then your code, then a close parenthesis, like this👇
var Name = "Tim McGraw"
"Your name is \(Name)"

//The results pane will now show "Your name is Tim McGraw" all as one string, because string interpolation combined the two for us.

//Now, we could have written that using the + operator, like this👇
var NAME = "Tim McGraw"
"Your name is " + NAME
//…but that's not as efficient, particularly if you're combining multiple variables together. In addition, string interpolation in Swift is smart enough to be able to handle a variety of different data types automatically. For example👇

var name1 = "Tim McGraw"
var age = 25
var latitude = 36.16667

"Your name is \(name1), your age is \(age), and your latitude is \(latitude)"

//Doing that using + is much more difficult, because Swift doesn't let you add integers and doubles to a string.

//At this point your result may no longer fit in the results pane, so either resize your window or hover over the result and click the + button that appears to have it shown inline.

//One of the powerful features of string interpolation is that everything between \( and ) can actually be a full Swift expression. For example, you can do mathematics in there using operators, like this👇
var Age = 25
"You are \(Age) years old. In another \(Age) years you will be \(Age * 2)."

