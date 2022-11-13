import Cocoa

//Arrays
//Arrays let you group lots of values together into a single collection, then access those values by their position in the collection. Swift uses type inference to figure out what type of data your array holds, like so👇
var evenNumbers = [2, 4, 6, 8]
var songs = ["Shake it Off", "You Belong with Me", "Back to December"]

//As you can see, Swift uses brackets to mark the start and end of an array, and each item in the array is separated with a comma.

//When it comes to reading items out an array, there's a catch: Swift starts counting at 0. This means the first item is 0, the second item is 1, the third is 2, and so on. Try putting this into your playground👇
var Songs = ["Shake it Off", "You Belong with Me", "Back to December"]
Songs[0]
Songs[1]
Songs[2]

//That will print "Shake it Off", "You Belong with Me", and "Back to December" in the results pane.

//An item's position in an array is called its index, and you can read any item from the array just by providing its index. However, you do need to be careful: our array has three items in, which means indexes 0, 1 and 2 work great. But if you try and read songs[3] your playground will stop working – and if you tried that in a real app it would crash!

//Because you've created your array by giving it three strings, Swift knows this is an array of strings. You can confirm this by using a special command in the playground that will print out the data type of any variable, like this👇
var SONGS = ["Shake it Off", "You Belong with Me", "Back to December"]
type(of: SONGS)

//That will print Array<String>.Type into the results pane, telling you that Swift considers songs to be an array of strings.

//Let's say you made a mistake, and accidentally put a number on the end of the array. Try this now and see what the results pane prints👇


//var songs1 = ["Shake it Off", "You Belong with Me", "Back to December", 3]
//type(of: songs1)


//This time you'll see an error. The error isn’t because Swift can’t handle mixed arrays like this one – I’ll show you how to do that in just a moment! – but instead because Swift is being helpful. The error message you’ll see is, “heterogenous collection literal could only be inferred to '[Any]'; add explicit type annotation if this is intentional.” Or, in plain English, “it looks like this array is designed to hold lots of types of data – if you really meant that, please make it explicit.”

//Type safety is important, and although it's neat that Swift can make arrays hold any kind of data this particular case was an accident. Fortunately, I've already said that you can use type annotations to specify exactly what type of data you want an array to store. To specify the type of an array, write the data type you want to store with brackets around it, like this👇


//var songs2: [String] = ["Shake it Off", "You Belong with Me", "Back to December", 3]


//Now that we've told Swift we want to store only strings in the array, it will always refuse to run the code because 3 is not a string.

//If you really want the array to hold any kind of data, use the special Any data type, like this👇
var Songs1: [Any] = ["Shake it Off", "You Belong with Me", "Back to December", 3]


//CREATING ARRAYS
//If you make an array using the syntax shown above, Swift creates the array and fills it with the values we specified. Things aren't quite so straightforward if you want to create the array then fill it later – this syntax doesn't work👇


//var SONGS1: [String]
//SONGS1[0] = "Shake it Off"


//The reason is one that will seem needlessly pedantic at first, but has deep underlying performance implications so I'm afraid you're just stuck with it. Put simply, writing var songs: [String] tells Swift "the songs variable will hold an array of strings," but it doesn't actually create that array. It doesn't allocate any RAM, or do any of the work to actually create a Swift array. It just says that at some point there will be an array, and it will hold strings.

//There are a few ways to express this correctly, and the one that probably makes most sense at this time is this👇
var SONGS2: [String] = []
//That uses a type annotation to make it clear we want an array of strings, and it assigns an empty array (that's the [] part) to it.

//You'll also commonly see this construct👇
var SONGS3 = [String] ()

//That means the same thing: the () tells Swift we want to create the array in question, which is then assigned to songs using type inference. This option is two characters shorter, so it's no surprise programmers prefer it!



//ARRAY OPERAYORS
//You can use a limited set of operators on arrays. For example, you can merge two arrays by using the + operator, like this👇
var songs5 = ["Shake it Off", "You Belong with Me", "Love Story"]
var songs6 = ["Today was a Fairytale", "Welcome to New York", "Fifteen"]
var both1 = songs5 + songs6

//You can also use += to add and assign, like this👇
both1 += ["Everything has changed"]


