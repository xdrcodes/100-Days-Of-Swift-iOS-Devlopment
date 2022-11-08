import Cocoa

//Exiting Multiple loops

//If you put a loop inside a loop it’s called a nested loop, and it’s not uncommon to want to break out of both the inner loop and the outer loop at the same time.

//As an example, we could write some code to calculate the times tables from 1 through 10 like this👇
for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
    }
}

//If we wanted to exit part-way through we need to do two things. First, we give the outside loop a label, like this👇
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print("\(i) * \(j) is \(product)")
//Second, add our condition inside the inner loop, then use break outerloop to exit both loops at the same time👇
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
        }
    }
}
//With a regular break, only the inner loop would be exited – the outer loop would continue where it left off.
        

