## Picture in Picture

To participate with Picture in Picture (PiP), take the following steps in your Xcode project:

* Link on or after **iOS 9.0**.
* In the Xcode Capabilities view for your project, select Audio and AirPlay in the **Background Modes** section.
* Configure your audio session with an appropriate category, such as **AVAudioSessionCategoryPlayback**, If you have not already done so in your app.
* To respond to user interactions with the PiP window, implement the methods of the **AVPlayerViewControllerDelegate** protocol.

> Having configured your project to support Picture in Picture, the player view controller then provides a PiP button for the user (iPad only), along with the other playback controls
