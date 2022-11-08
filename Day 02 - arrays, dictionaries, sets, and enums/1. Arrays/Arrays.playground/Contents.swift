import Cocoa

//Arrays - Arrays are collections of values that are stored as a single value.

let Mouqueer = "Mouqueer Anwar"
let Subham = "Subham Paul"
let Pradeep = "Pradeep Yadav"
let Kunal = "Kunal Roy"
let Anish = "Anish Agarwal"
let Somuyojeet = "Somuyojeet Dey"

let AceView = [Mouqueer, Subham, Pradeep, Kunal, Anish, Somuyojeet] //This last line makes the array: it starts and ends with brackets, with each item in the array separated by a comma.

//You can read values from an array by writing a number inside brackets. Array positions count from 0, so if you want to read “Pradeep Yadav”, "Somuyojeet Dey", "Subham Paul", you would write this:
AceView[2]
AceView[5]
AceView[1]

//Be careful: Swift crashes if you read an item that doesn’t exist. For example, trying to read beatles[9] is a bad idea.
