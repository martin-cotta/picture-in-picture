## Picture in Picture

To participate with Picture in Picture (PiP), take the following steps in your Xcode project:

* Link on or after **iOS 9.0**.
* In Target -> Capabilities, select Audio and AirPlay in the **Background Modes** section.
* Configure your audio session with an appropriate category such as `AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)`
* Employ an appropriate **AVKit**, **AV Foundation**, or **WebKit** class for your video playback

> Having configured your project to support Picture in Picture, the player view controller then provides a PiP button for the user (iPad only), along with the other playback controls

### AVKit
* Import **AVKit** & **AVFoundation** frameworks
* Use `AVPlayerViewController` for play a video
* To respond to user interactions with the PiP window, implement the `AVPlayerViewControllerDelegate` protocol.

### WebKit
* Import **WebKit** framework
* Use `WKWebView` to load a web page with an embeded video
* WWDC 2015 [What's New in Web Development in WebKit and Safari](https://developer.apple.com/videos/wwdc/2015/?id=501)
* WWDC 2014 [Introducing the Modern WebKit API](https://developer.apple.com/videos/wwdc/2014/?id=206)

### Links

[Apple: Picture in Picture Quick Start](https://developer.apple.com/library/prerelease/ios/documentation/WindowsViews/Conceptual/AdoptingMultitaskingOniPad/QuickStartForPictureInPicture.html)

[Inside iOS 9: Apple's iPad-only 'Picture in Picture' mode lets you keep watching video with any task](http://appleinsider.com/articles/15/06/11/inside-ios-9-apples-new-ipad-only-picture-in-picture-mode-lets-you-keep-watching-video-with-any-task)
