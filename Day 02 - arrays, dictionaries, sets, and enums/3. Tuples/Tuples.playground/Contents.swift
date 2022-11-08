import Cocoa

//Tuples - Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are different:
// 1) You can’t add or remove items from a tuple; they are fixed in size.
// 2) You can’t change the type of items in a tuple; they always have the same types they were created with.
// 3) You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.

//Tuples are created by placing multiple items into parentheses, like this:👇
var name = (first: "Subham", last: "Paul")

//You then access items using numerical positions starting from 0:
name.0
name.1

//You then access items using numerical positions starting from 0:
name.first
name.last

var name1 = ("Dilip", "Kumar", "Paul")
name1.0
name1.2
name1.1
