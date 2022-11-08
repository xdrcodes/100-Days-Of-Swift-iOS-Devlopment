import Cocoa

//Repeat loops - It's identical to a while loop except the condition to check comes at the end.

//So, we could rewrite out hide and seek example like this👇
var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20
            
print("Ready or not, here I come!")
            
//Because the condition comes at the end of the repeat loop the code inside the loop will always be executed at least once, whereas while loops check their condition before their first run.

//For example, this print() function will never be run, because false is always false👇
//while false {
    //print("This is false")
//}
//Xcode will even warm us that the print() line will never be executed.

//On the other hand, this print() function will be run once, because repeat only fails the condition after the loop runs👇
repeat {
    print("This is false")
}  while false


