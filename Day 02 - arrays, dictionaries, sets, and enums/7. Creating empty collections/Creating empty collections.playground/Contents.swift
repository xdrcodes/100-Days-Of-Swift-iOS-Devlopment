import Cocoa
import Darwin

//Creating empty collections - Arrays, sets, and dictionaries are called collections, because they collect values together in one place.
//If you want to create an empty collection just write its type followed by opening and closing parentheses. For example , we can create an empty dictionary with string for keys and values like this👇

var Student = [String: String] ()

//we can then add entries later on, like this:
Student["Subham"] = "Red House"
Student["Vikash"] = "Green House"
Student["Subham"]

var points = [String: Int] ()
points["Subham"] = 17
points["Vikash"] = 19
points //After adding entries you can check the dictionary this way.
points["Vikash"]


//Similarly, you can create an empty array to store integers like this👇
var marks = [Int] ()
marks = [37, 37, 55]
marks[2]
marks

//The exception is creating an empty set, which is done diffrently👇
var names = Set<String>()
names = Set(["Subham", "Vikash", "Ranjit", "Sourav"])
names

var numbers = Set<Int>()
numbers = ([37, 38, 62, 21, 50])
numbers

//If you wanted, you could create arrays and dictionaries with similar syntax:
var score = Dictionary<String, Int>()
score["Meghalaya"] = 37
score["Anurachal Pradesh"] = 35
score["Assam"] = 26
score["Meghalaya"]
score

var results = Array<Int>()
results = [37, 88, 89]
results
results[2]
