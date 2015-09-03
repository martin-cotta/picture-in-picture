//
//  ViewController.swift
//  picture-in-picture
//
//  Created by Martin Cotta on 9/3/15.
//
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    let playerVC = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerVC.delegate = self;
    }

    @IBAction func playVideo(sender: AnyObject) {
        // http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8
        // http://devimages.apple.com/iphone/samples/bipbop/gear1/prog_index.m3u8
        // https://developer.apple.com/streaming/
        
        playerVC.player = AVPlayer(URL: NSURL(string: "http://devimages.apple.com/iphone/samples/bipbop/bipbopall.m3u8")!)
        presentViewController(playerVC, animated: true) { () -> Void in
            playerVC.player?.play()
        }
        
    }
}

//MARK: - delegate

extension ViewController: AVPlayerViewControllerDelegate {
    
    func playerViewControllerShouldAutomaticallyDismissAtPictureInPictureStart(playerViewController: AVPlayerViewController) -> Bool {
        return false
    }

    func playerViewControllerWillStartPictureInPicture(playerViewController: AVPlayerViewController) {
        print("playerViewControllerWillStartPictureInPicture")
    }
    
    func playerViewControllerDidStartPictureInPicture(playerViewController: AVPlayerViewController) {
        print("playerViewControllerDidStartPictureInPicture")
    }
    
    func playerViewControllerWillStopPictureInPicture(playerViewController: AVPlayerViewController) {
        print("playerViewControllerWillStopPictureInPicture")
    }
    
    func playerViewControllerDidStopPictureInPicture(playerViewController: AVPlayerViewController) {
        print("playerViewControllerDidStopPictureInPicture")
    }
    
    func playerViewController(playerViewController: AVPlayerViewController, failedToStartPictureInPictureWithError error: NSError) {
        print("failedToStartPictureInPictureWithError \(error)")
    }
    
    func playerViewController(playerViewController: AVPlayerViewController, restoreUserInterfaceForPictureInPictureStopWithCompletionHandler completionHandler: (Bool) -> Void) {
        print("restoreUserInterfaceForPictureInPictureStopWithCompletionHandler")
        completionHandler(true)
    }
}
