import Cocoa

//Arrays vs sets vs tuples
//Arrays, sets, and tuples can seem similar at first, but they have distinct uses. To help you know which to use, here are some rules.

//If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
let school = (schoolName: "DPS", class: "12-Science", roll: 37, result: "pass")
school.1
school.2

//If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
let set = Set(["Akhongry", "Tura", "West", "Garo", "Hills", "Meghalaya"])

//If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
let friends = ["Somuyojeet", "Pradeep", "Anish", "Mouqueer", "Priti", "Pradeep"]
friends[5]
friends[4]
