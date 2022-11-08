import Cocoa

//Strings and integers
//Swift is a type safe language - So, each variable must be of one specific type.

var str = "Hello, Subham"//The str variable that Xcode created for us holds a string of letters that spell “Hello, Subham”, so Swift assigns it the type String.

var age = 18//If we want to store someone’s age we might make a variable like this.
//That holds a whole number, so Swift assigns the type Int – short for “integer”.

var population = 1_393_409_038//If you have large numbers, Swift lets you use underscores as thousands separators – they don’t change the number, but they do make it easier to read.

//Strings and integers are different types, and they can’t be mixed. So, while it’s safe to change str to “Letters”, I can’t make it 18 because that’s an Int not a String.
