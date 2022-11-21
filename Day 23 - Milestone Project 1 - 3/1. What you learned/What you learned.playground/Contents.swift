//What you learned

//You’ve made your first two projects now, and completed a technique project too – this same cadence of app, game, technique is used all the way up to project 30, and you’ll start to settle into it as time goes by.

//Both the app and the game were built with UIKit – something we’ll continue for two more milestones – so that you can really start to understand how the basics of view controllers work. These really are a fundamental part of any iOS app, so the more experience I can give you with them the better.

//At this point you’re starting to put your Swift knowledge into practice with real context: actual, hands-on projects. Because most iOS apps are visual, that means you’ve started to use lots of things from UIKit, not least:

//Table views using UITableView. These are used everywhere in iOS, and are one of the most important components on the entire platform.
//Image views using UIImageView, as well as the data inside them, UIImage. Remember: a UIImage contains the pixels, but a UIImageView displays them – i.e., positions and sizes them. You also saw how iOS handles retina and retina HD screens using @2x and @3x filenames.
//Buttons using UIButton. These don’t have any special design in iOS by default – they just look like labels, really. But they do respond when tapped, so you can take some action.
//View controllers using UIViewController. These give you all the fundamental display technology required to show one screen, including things like rotation and multi-tasking on iPad.
//System alerts using UIAlertController. We used this to show a score in project 2, but it’s helpful for any time you need the user to confirm something or make a choice.
//Navigation bar buttons using UIBarButtonItem. We used the built-in action icon, but there are lots of others to choose from, and you can use your own custom text if you prefer.
//Colors using UIColor, which we used to outline the flags with a black border. There are lots of built-in system colors to choose from, but you can also create your own.
//Sharing content to Facebook and Twitter using UIActivityViewController. This same class also handles printing, saving images to the photo library, and more.
//One thing that might be confusing for you is the relationship between CALayer and UIView, and CGColor and UIColor. I’ve tried to describe them as being “lower level” and “higher level”, which may or may not help. Put simply, you’ve seen how you can create apps by building on top of Apple’s APIs, and that’s exactly how Apple works too: their most advanced things like UIView are built on top of lower-level things like CALayer. Some times you need to reach down to these lower-level concept, but most of the time you’ll stay in UIKit.

//If you’re concerned that you won’t know when to use UIKit or when to use one of the lower-level alternatives, don’t worry: if you try to use a UIColor when Xcode expects a CGColor, it will tell you!

//Both projects 1 and 2 worked extensively in Interface Builder, which is a running theme in this series: although you can do things in code, it’s generally preferable not to. Not only does this mean you can see exactly how your layout will look when previewed across various device types, but you also open the opportunity for specialized designers to come in and adjust your layouts without touching your code. Trust me on this: keeping your UI and code separate is A Good Thing.

//Three important Interface Builder things you’ve met so far are:

//Storyboards, edited using Interface Builder, but used in code too by setting storyboard identifiers.
//Outlets and action from Interface Builder. Outlets connect views to named properties (e.g. imageView), and actions connect them to methods that get run, e.g. buttonTapped().
//Auto Layout to create rules for how elements of your interface should be positioned relative to each other.
//You’ll be using Interface Builder a lot throughout this series. Sometimes we’ll make interfaces in code, but only when needed and always with good reason.

//There are three other things I want to touch on briefly, because they are important.

//First, you met the Bundle class, which lets you use any assets you build into your projects, like images and text files. We used that to get the list of NSSL JPEGs in project 1, but we’ll use it again in future projects.

//Second, loading those NSSL JPEGs was done by scanning the app bundle using the FileManager class, which lets you read and write to the iOS filesystem. We used it to scan directories, but it can also check if a file exists, delete things, copy things, and more.

//Finally, you learned how to generate truly random numbers using Swift’s Int.random(in:) method. Swift has lots of other functionality for randomness that we’ll be looking at in future projects.
