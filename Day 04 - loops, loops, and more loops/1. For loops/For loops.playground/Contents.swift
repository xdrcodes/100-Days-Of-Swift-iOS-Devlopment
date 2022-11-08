import Cocoa

//For loops - run some code repeatedly until a condition evaluates as false.
//For loops will loop over arrays and ranges, and each time the loop goes around it will pull out one item and assign to a constant.

//For example, here's a range of numbers👇
let count = 1...10
//We can use a for loop to print each item like this👇
for number in count {
    print("Number is \(number)")
}

//We can do the same with arrays:
let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}

let guests = ["John", "Rishab", "Sam", "Michal", "Johnson", "Ame"]

for guest in guests {
    print("\(guest) you are cordially invited to tonight's fest")
}

//If you dont't use the constant that for loops give you. You should use an underscore instead so that Swift doesn't create needless values:
print("Players gonna ")

for _ in 1...5 {
    print("play")
}

for _ in 1...10 {
    print("AaaOoo..AaaOoo")
}
