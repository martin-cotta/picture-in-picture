//
//  WebViewController.swift
//  picture-in-picture
//
//  Created by Martin Cotta on 9/3/15.
//
//

import UIKit
import WebKit

class WebViewController: UIViewController {

    @IBOutlet weak var webContainer: UIView!
    
    lazy var webView: WKWebView = self.setupWebView()

    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.webContainer.addSubview(webView)

        // setup auto layout
        let views = ["webView": webView]
        webView.translatesAutoresizingMaskIntoConstraints = false
        self.webContainer.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[webView]|", options: .AlignAllCenterX, metrics: nil, views: views))
        self.webContainer.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[webView]|", options: .AlignAllCenterY, metrics: nil, views: views))

        // load web content
        let url = NSURL(string: "http://www.golfchannel.com/news/randall-mell/pursuit-no-1-unites-new-big-3/")!
        webView.loadRequest(NSURLRequest(URL: url))
        print("loading url: \(url)")
    }


    // MARK: - Private
    
    private func setupWebView() -> WKWebView {
        let wv = WKWebView()
        wv.navigationDelegate = self
        
        // add a border to the web view
        wv.layer.borderColor = UIColor.grayColor().CGColor
        wv.layer.borderWidth = 1.0
        
        return wv
    }
    
}

//MARK: - WKNavigationDelegate

extension WebViewController: WKNavigationDelegate {
    
    func webView(webView: WKWebView, decidePolicyForNavigationAction navigationAction: WKNavigationAction, decisionHandler: (WKNavigationActionPolicy) -> Void) {
        print("Navigation Action: \(navigationAction.request.URL!.absoluteString)")
        decisionHandler(.Allow)
    }
    
    func webView(webView: WKWebView, decidePolicyForNavigationResponse navigationResponse: WKNavigationResponse, decisionHandler: (WKNavigationResponsePolicy) -> Void) {
        print("Navigation Response: \(navigationResponse.response.MIMEType!)")
        decisionHandler(.Allow)
    }
    
    func webView(webView: WKWebView, didFailNavigation navigation: WKNavigation!, withError error: NSError) {
        print("fail navigation: \(error.localizedDescription)")
    }
    
    func webView(webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: NSError) {
        print("fail provisional navigation: \(error.localizedDescription)")
    }
    
    func webView(webView: WKWebView, didCommitNavigation navigation: WKNavigation!) {
        print("did commit navigation")
    }

    func webView(webView: WKWebView, didFinishNavigation navigation: WKNavigation!) {
        print("did finish navigation")
    }

}
