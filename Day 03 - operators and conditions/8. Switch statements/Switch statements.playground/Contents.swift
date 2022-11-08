import Cocoa

//Switch statements - If you have several conditions using if and else if, it’s often clearer to use a different construct known as switch case. Using this approach you write your condition once, then list all possible outcomes and what should happen for each of them.

//To try this out, here’s a weather constant containing the string sunny👇
let weather = "rain"

//We can use a switch block to print one of four different messages👇
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap ip wrap")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day")
}

//In that example, the last case – default – is required because Swift makes sure you cover all possible cases so that no eventuality is missed off. If the weather is anything other than rain, snow, or sun, the default case will be run.

//Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this👇
let Weather = "Sunny"

switch Weather {
case "Rain":
    print("Bring an umbrella")
case "Snow":
    print("Wrap up warm")
case "Sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}

