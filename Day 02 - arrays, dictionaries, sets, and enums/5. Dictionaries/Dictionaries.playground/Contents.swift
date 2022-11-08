import Cocoa

//Dictionaries - Dictionaries are collections of values just like arrays, but rather then storing things with an integer position you can access them using anything you wnat.

let marks = [
    "Subham Paul": 37.9,
    "Arnab Deb": 38.4,
    "Kaushik Mukharjee": 25.9,
]

//Just like arrays, dictionaries start and end with brackets and each item is separated with a comma. However, we also use a colon to separate the value you want to store (e.g. 37.9) from the identifier you want to store it under (e.g. "Subham Paul").

//These identifiers are called keys, and you can use them to read data back out of the dictionary👇
marks["Subham Paul"]
