//What you learned

//Project 4 showed how easy it is to build complex apps: Apple’s WebKit framework contains a complete web browser you can embed into any app that needs HTML to be displayed. That might be a small snippet you’ve generated yourself, or it might be a complete website as seen in project 4.

//After that, project 5 showed you how to build your second game, while also sneaking in a little more practice with UITableViewController. Starting from project 11 we’ll be switching to SpriteKit for games, but there are lots of games you can make in UIKit too.

//WebKit is the second external framework we’ve used, after the Social framework in project 3. These frameworks always deliver lots of complex functionality grouped together for one purpose, but you also learned lots of other things too👇

//Delegation. We used this in project 4 so that WebKit events get sent to our ViewController class so that we can act on them.
//We used UIAlertController with its .actionSheet style to present the user with options to choose from. We gave it a .cancel button without a handler, which dismisses the options.
//You saw you can place UIBarButtonItems into the toolbarItems property, then have a UIToolbar shown by the navigation controller. We also used the .flexibleSpace button type to make the layout look better.
//You met Key-Value Observing, or KVO, which we used to update the loading progress in our web browser. This lets you monitor any property in all of iOS and be notified when it changes.
//You learned how to load text files from disk using contentsOf.
//We added a text field to UIAlertController for the first time, then read it back using ac?.textFields?[0]. We’ll be doing this in several other projects in this series.
//You dipped your toes into the world of closures once again. These are complicated beasts when you’re learning, but at this point in your Swift career just think of them as functions you can pass around in variables or as parameters to other functions.
//You worked with some methods for string and array manipulation: contains(), remove(at:), firstIndex(of:).
//On top of that, we also took a deep-dive into the world of Auto Layout. We used this briefly in projects 1 and 2, but you’ve now learned more ways to organize your designs👇 Visual Format Language and anchors. There are other ways yet to come, and soon you’ll start to find you prefer one method over another – and that’s OK. I’m showing you them all so you can find what works best for you, and we all have our own preferences!
