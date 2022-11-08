import Cocoa

import Cocoa

//Enum raw value - Sometimes you need to be able to assign values to enums so they have meaning. This lets you create them  dynamically, and also use them in different ways.
//For example, you might creat a Names enum that stores integer value for each of its cases

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}
//Swift will automatically assign each of those a number starting from 0, and you can use that number to create an instance of the appropriate enum case. For example, kunal will be given the number 2, so you can write this👇
let earth = Planet(rawValue: 2)

//If you want, you can assign one or more cases a specific value, and Swift will generate the rest. it's not very natural for us to think of Kunal as the second name, so you could write this👇

enum planet: Int {
    case Mercury = 1
    case Venus
    case Earth
    case Mars
}
let Venus = planet(rawValue: 2)
//Now Swift will assign 1 to Subham and count upwards from there, meaning that Kunal is now the third name.

