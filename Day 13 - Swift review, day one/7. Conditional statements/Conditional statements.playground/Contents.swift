import Cocoa

//Conditional statements
//Sometimes you want code to execute only if a certain condition is true, and in Swift that is represented primarily by the if and else statements. You give Swift a condition to check, then a block of code to execute if that condition is true.

//You can optionally also write else and provide a block of code to execute if the condition is false, or even else if and have more conditions. A "block" of code is just a chunk of code marked with an open brace – { – at its start and a close brace – } – at its end.

//Here's a basic example👇
var action: String
var person = "hater"

if person == "hater" {
    action = "hate"
}

//That uses the == (equality) operator introduced previously to check whether the string inside person is exactly equivalent to the string "hater". If it is, it sets the action variable to "hate". Note that open and close braces, also known by their less technical name of "curly brackets" – that marks the start and end of the code that will be executed if the condition is true.

//Let's add else if and else blocks👇
var Action: String
var Person = "hater"

if Person == "hater" {
    action = "hate"
} else if Person == "player" {
    action = "play"
} else {
    action = "cruise"
}
//That will check each condition in order, and only one of the blocks will be executed: a person is either a hater, a player, or anything else.



//EVALUATING MULTIPLE CONDITIONS
//You can ask Swift to evaluate as many conditions as you want, but they all need to be true in order for Swift to execute the block of code. To check multiple conditions, use the && operator – it means "and". For example👇
var ACTION: String
var stayOutTooLate = true
var nothingInBrain = true

if stayOutTooLate && nothingInBrain {
    action = "cruise"
}
//Because stayOutTooLate and nothingInBrain are both true, the whole condition is true, and action gets set to "cruise." Swift uses something called short-circuit evaluation to boost performance: if it is evaluating multiple things that all need to be true, and the first one is false, it doesn't even bother evaluating the rest.


//LOOKING FOR THE OPPOSITE OF TRUTH
//This might sound deeply philosophical, but actually this is important: sometimes you care whether a condition is not true, i.e. is false. You can do this with the ! (not) operator that was introduced earlier. For example👇
if !stayOutTooLate && !nothingInBrain {
    action = "cruise"
}
//This time, the action variable will only be set if both stayOutTooLate and nothingInBrain are false – the ! has flipped them around.
