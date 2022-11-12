import Cocoa

//Force unwrapping
//Optionals represent data that may or may not be there, but sometimes you know for sure that a value isn’t nil. In these cases, Swift lets you force unwrap the optional: convert it from an optional type to a non-optional type.

//For example, if you have a string that contains a number, you can convert it to an Int like this👇
let str = "5"
let num = Int(str)
//That makes num an optional Int because you might have tried to convert a string like “Fish” rather than “5”.

//Even though Swift isn’t sure the conversion will work, you can see the code is safe so you can force unwrap the result by writing ! after Int(str), like this👇
let Num = Int(str)!
//Swift will immediately unwrap the optional and make num a regular Int rather than an Int?. But if you’re wrong – if str was something that couldn’t be converted to an integer – your code will crash.

//As a result, you should force unwrap only when you’re sure it’s safe – there’s a reason it’s often called the crash operator.




