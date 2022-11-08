import Cocoa

//Dictionary default values - If you try to read a value from a dictionary using a key that doesn't exist, Swift will send you back nil - nothing at all. While this might be what you want, there's an alternative: we can provide the dictionary with a default value to use if we request a missing key.

let favouriteIceCream = [
    "Paul": "Butterscotch",
    "George": "Vanilla",
    "Michell": "Chocolate",
]
 //we can read Paul's favorite ice cream like this👇
favouriteIceCream["Paul"]

//But if we tried reading the favorite ice cream for Melina, we'd get back nil, meaning that Swift doesn't have a value for that key👇
favouriteIceCream["Melina"]

//We can fix this by giving the dictionary a default value of "Unknown", so that when no ice cream is found for Melina we get back "Unknown" rather than nil:
favouriteIceCream["Melina", default: "Unknown"]
favouriteIceCream["George", default: "Unknown"]
favouriteIceCream["John", default: "Unknown"]
