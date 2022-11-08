import Cocoa

//Methods
//Structs can have functions inside them, and those functions can use the properties of the struct as they need to. Functions inside structs are called methods, but they still use the same func keyword.
//We can demonstrate this with a City struct. This will have a population property that stores how many people are in the city, plus a collectTaxes() method that returns the population count multiplied by 1000. Because the method belongs to City it can read the current city's population property.
//Here's the code👇
struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}
//That method belongs to the struct, so we call it on instances of the struct like this👇
let london = City(population: 9_000_000)
london.collectTaxes()
print(london.collectTaxes())
