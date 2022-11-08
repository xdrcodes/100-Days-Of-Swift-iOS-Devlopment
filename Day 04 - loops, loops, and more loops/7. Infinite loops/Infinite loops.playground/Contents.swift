import Cocoa

//Infinite loops

//It’s common to use while loops to make infinite loops: loops that either have no end or only end when you’re ready. All apps on your iPhone use infinite loops, because they start running, then continually watch for events until you choose to quit them.

//To make an infinite loop, just use true as your condition. true is always true, so the loop will repeat forever. Warning: Please make sure you have a check that exits your loop, otherwise it will never end.

//As an example, we’re going to use while true to print the music of John Cage’s piece 4’33” – if you didn’t know, it’s famous because it’s 4 minutes and 33 seconds of complete silence.

//We can write the “music” for this piece using while true, with a condition that exits the loop when we’ve gone around enough times:
var counter = 0

while true {
    print(" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}
