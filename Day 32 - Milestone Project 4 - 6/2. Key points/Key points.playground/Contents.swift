//Key points
//There are three pieces of code I’d like to revisit because they carry special significance.

//First, let’s consider the WKWebView from project 4. We added this property to the view controller👇

//var webView: WKWebView!

//Then added this new loadView() method👇

/*/
override func loadView() {
    webView = WKWebView()
    webView.navigationDelegate = self
    view = webView
}
*/


//The loadView() method is often not needed, because most view layouts are loaded from a storyboard. However, it’s common to write part or all of your user interface in code, and for those times you’re likely to want to replace loadView() with your own implementation.

//If you wanted a more complex layout – perhaps if you wanted the web view to occupy only part of the screen – then this approach wouldn’t have worked. Instead, you would need to load the normal storyboard view then use viewDidLoad() to place the web view where you wanted it.

//As well as overriding the loadView() method, project 4 also had a webView property. This was important, because as far as Swift is concerned the regular view property is just a UIView.

//Yes, we know it’s actually a WKWebView, but Swift doesn’t. So, when you want to call any methods on it like reload the page, Swift won’t let you say view.reload() because as far as it’s concerned UIView doesn’t have a reload() method.

//That’s what the property solves: it’s like a permanent typecast for the view, so that whenever we need to manipulate the web view we can use that property and Swift will let us.

//The second interesting piece of code is this, taken from project 5👇

/*/
if let startWords = try? String(contentsOf: startWordsURL) {
    allWords = startWords.components(separatedBy: "\n")
}
*/



//This combines if let and try? in the same expression, which is something you’ll come across a lot. The contentsOf initializer for strings lets you load some text from disk. If it succeeds you’ll get the text back, but if it fails Swift will complain loudly by throwing an exception.

//You learned about try, try!, and try? some time ago, but I hope now you can see why it’s helpful to have all three around. What try? does is say, “instead of throwing an exception, just return nil if the operation failed.” And so, rather than contentsOf returning a String it will actually return a String? – it might be some text, or it might be nil. That’s where if let comes in: it checks the return value from contentsOf and, if it finds valid text, executes the code inside the braces.

//The last piece of code I’d like to review is this👇

/*/
view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat:"V:|[label1(labelHeight)]-[label2(labelHeight)]-[label3(labelHeight)]-[label4(labelHeight)]-[label5(labelHeight)]->=10-|", options: [], metrics: metrics, views: viewsDictionary))
*/


//I think that – in just one line of code – demonstrates the advantages of using Visual Format Language: it lines up five labels, one above the other, each with equal height, with a small amount of space between them, and 10 or more points of space at the end.

//That line also demonstrates the disadvantage of Visual Format Language: it has a tendency to look like line noise! You need to read it very carefully, sometimes jumping back and forward, in order to unpick what it’s trying to do. VFL is the quickest and easiest way to solve many Auto Layout problems in an expressive way, but as you progress through this course you’ll learn alternatives such as UIStackView that can do the same thing without the complex syntax.
