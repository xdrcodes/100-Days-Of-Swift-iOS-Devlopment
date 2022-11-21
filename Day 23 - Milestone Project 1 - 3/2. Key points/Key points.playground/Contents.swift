//key Points


//There are five important pieces of code that are important enough they warrant some revision. First, this line:


let items = try! fm.contentsOfDirectory(atPath: path)


//The fm was a reference to FileManager and path was a reference to the resource path from Bundle, so that line pulled out an array of files at the directory where our app’s resources lived. But do you remember why the try! was needed?

//When you ask for the contents of a directory, it’s possible – although hopefully unlikely! – that the directory doesn’t actually exist. Maybe you meant to look in a directory called “files” but accidentally wrote “file”. In this situation, the contentsOfDirectory() call will fail, and Swift will throw an exception – it will literally refuse to continue running your code until you handle the error.

//This is important, because handling the error allows your app to behave well even when things go wrong. But in this case we got the path straight from iOS – we didn’t type it in by hand, so if reading from our own app’s bundle doesn’t work then clearly something is very wrong indeed.

//Swift requires any calls that might fail to be called using the try keyword, which forces you to add code to catch any errors that might result. However, because we know this code will work – it can’t possibly be mistyped – we can use the try! keyword, which means “don’t make me catch errors, because they won’t happen.” Of course, if you’re wrong – if errors do happen – then your app will crash, so be careful!

//The second piece of code I’d like to look at is this method:


override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return pictures.count
}


//That was used in project 1 to make the table view show as many rows as necessary for the pictures array, but it packs a lot into a small amount of space.

//To recap, we used the Single View App template when creating project 1, which gave us a single UIViewController subclass called simply ViewController. To make it use a table instead, we changed ViewController so that it was based on UITableViewController, which provides default answers to lots of questions: how many sections are there? How many rows? What’s in each row? What happens when a row is tapped? And so on.

//Clearly we don’t want the default answers to each of those questions, because our app needs to specify how many rows it wants based on its own data. And that’s where the override keyword comes in: it means “I know there’s a default answer to this question, but I want to provide a new one.” The “question” in this case is “numberOfRowsInSection”, which expects to receive an Int back: how many rows should there be?

//The last two pieces of code I want to look at again are these:



let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)

if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
}


//Both of these are responsible for linking code to storyboard information using an identifier string. In the former case, it’s a cell reuse identifier; in the latter, it’s a view controller’s storyboard identifier. You always need to use the same name in Interface Builder and your code – if you don’t, you’ll get a crash because iOS doesn’t know what to do.

//The second of those pieces of code is particularly interesting, because of the if let and as? DetailViewController. When we dequeued the table view cell, we used the built-in “Basic” style – we didn’t need to use a custom class to work with it, so we could just crack on and set its text.

//However, the detail view controller has its own custom thing we need to work with: the selectedImage string. That doesn’t exist on a regular UIViewController, and that’s what the instantiateViewController() method returns – it doesn’t know (or care) what’s inside the storyboard, after all. That’s where the if let and as? typecast comes in: it means “I want to treat this is a DetailViewController so please try and convert it to one.”

//Only if that conversion works will the code inside the braces execute – and that’s why we can access the selectedImage property safely.
