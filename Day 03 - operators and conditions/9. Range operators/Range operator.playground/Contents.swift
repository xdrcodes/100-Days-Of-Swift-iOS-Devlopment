import Cocoa

//Range operator - Swift gives us two ways of making ranges: the ..< and ... operators. The half-open range operator, ..<, creates ranges up to but excluding the final value, and the closed range operator, ..., creates ranges up to and including the final value.

//For example, the range 1..<5 contains the numbers 1, 2, 3, and 4, whereas the range 1...5 contains the numbers 1, 2, 3, 4, and 5.

//Ranges are helpful with switch blocks, because you can use them for each of your cases. For example, if someone sat an exam we could print different messages depending on their score👇
let score = 85

switch score {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did Ok.")
default:
    print("You did great")
}

//As before, the default case must be there to ensure all possible values are covered.
