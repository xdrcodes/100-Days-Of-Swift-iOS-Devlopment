import Cocoa

//Access control
//Access control lets you restrict which code can use properties and methods. This is important because you might want to stop people reading a property directly, for example.
//We could create a Person struct that has id property to store their social security number👇
struct Person {
    var id: String
    
    init(id: String) {
        self.id = id
    }
}
let ed = Person(id: "12345")
//Once that person has been created, we can make their id be private so you can't read it from outside the struct - trying to write ed.id simply won't work.
//Just use the private keyword, like this👇
struct person {
    private var Id: String
    
    init(Id: String) {
        self.Id = Id
    }
}
let Ed = person(Id: "12345")
//Now only methods inside person can read the id property.
//For example👇
struct PERSON {
    private var ID: String
    
    init(ID: String) {
        self.ID = ID
    }
    
    func identify() -> String {
        return "My social security number is \(ID)"
    }
}
let ED = PERSON(ID: "12345")
//Another common option is public, which lets all other code use the property or method.
