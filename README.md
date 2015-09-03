## Picture in Picture

To participate with Picture in Picture (PiP), take the following steps in your Xcode project:

* Link on or after **iOS 9.0**.
* In Capabilities view for your project, select Audio and AirPlay in the **Background Modes** section.
* Configure your audio session with an appropriate category, such as [AVAudioSessionCategoryPlayback](https://developer.apple.com/library/prerelease/ios/documentation/AVFoundation/Reference/AVAudioSession_ClassReference/index.html#//apple_ref/c/data/AVAudioSessionCategoryPlayback).
* Employ an appropriate AVKit, AV Foundation, or WebKit class for your video playback
* AVKit: To respond to user interactions with the PiP window, implement the methods of the **AVPlayerViewControllerDelegate** protocol.

> Having configured your project to support Picture in Picture, the player view controller then provides a PiP button for the user (iPad only), along with the other playback controls


[Apple: Picture in Picture Quick Start](https://developer.apple.com/library/prerelease/ios/documentation/WindowsViews/Conceptual/AdoptingMultitaskingOniPad/QuickStartForPictureInPicture.html)

[Inside iOS 9: Apple's iPad-only 'Picture in Picture' mode lets you keep watching video with any task](http://appleinsider.com/articles/15/06/11/inside-ios-9-apples-new-ipad-only-picture-in-picture-mode-lets-you-keep-watching-video-with-any-task)
