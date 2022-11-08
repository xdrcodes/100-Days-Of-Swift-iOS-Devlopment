import Cocoa

//Enumerations - usually called just enums - are a way of defining group of related values in a way that makes them easier to use.
//For example, if you wanted to write some code to represent the success or failure of some work you were doing, you could represent that as string👇
let result = "failure"
//But what happens if someone accidentally uses different naming?
let result2 = "failed"
let result3 = "fail"
//All those three are different strings, so they mean different things.

//with enums we can define a Result type that can be either success or failure, like this👇
enum Result {
    case success
    case failure
}
//And now when we use it we must choose one of those two values:
let result4 = Result.failure
let result5 = Result.success

//This stops you from accidentally using different strings each time.

//Another example of enumerations👇
enum station {
    case stop
    case go
}
let station1 = station.stop
let station2 = station.go
let station3 = station.stop
let station4 = station.stop
