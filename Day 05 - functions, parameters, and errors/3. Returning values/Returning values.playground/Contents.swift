import Cocoa

//Returning values - As well as receiving data, functions can also send back data. To do this, write a dash then a right angle bracket after your function’s parameter list, then tell Swift what kind of data will be returned.

//Inside your function, you use the return keyword to send a value back if you have one. Your function then immediately exits, sending back that value – no other code from that function will be run.

//We could rewrite our square() function to return a value rather than print it directly:
func square(number: Int) -> Int {
    return number * number
}
//Now we can grab that return value when the function is run, and print it there:
let result = square(number: 8)
print(result)

//If you need to return multiple values, this is a perfect example of when to use tuples.
