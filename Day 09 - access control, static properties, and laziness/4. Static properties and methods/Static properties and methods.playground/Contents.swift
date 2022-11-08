import Cocoa

//Static properties and methods
//All the properties and methods we've created so far have belonged to individual instances of structs, which means that if we had a Student struct we could creat several student instances each with their own properties and methods👇
struct Student {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
//You can also ask Swift to share specific properties and methods across all instances of the struct by declaring them as static.
//To try this out, we’re going to add a static property to the Student struct to store how many students are in the class. Each time we create a new student, we’ll add one to it👇
struct student {
    static var classSize = 0
    var Name: String
    
    init(Name: String) {
        self.Name = Name
        student.classSize += 1
    }
}
let paul = student(Name: "paul")
let kl = student(Name: "kl")
//Because the classSize property belongs to the struct itself rather than instance of the struct, we need to read it using Student.classSize👇
print(student.classSize)
