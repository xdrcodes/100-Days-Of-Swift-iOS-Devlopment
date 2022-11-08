import Cocoa

//Multi-line string - Standard Swift strings use double quotes, but you can’t include line breaks in there.
var str = "Hello, Subham"

//Want multi-line string?👇
//You have a slightly different syntax (Start and end with three double quotes marks, like this👇)
var str1 = """
Now it's
time to get
multiple lines
""" //👈This opening and closing triple must be on their own line.

//If you only want multi-line strings to format your code neatly, and you don’t want those line breaks to actually be in your string, end each line with a \, like this:👇
var str2 = """
Now it's \
time to get \
multiple lines
""" //👈This opening and closing triple must be on their own line.


