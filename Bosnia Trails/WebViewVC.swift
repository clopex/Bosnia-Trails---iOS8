//
//  WebViewVC.swift
//  Bosnia Trails
//
//  Created by Adis Mulabdic on 3/7/16.
//  Copyright © 2016 Adis Mulabdic. All rights reserved.
//

import UIKit

class WebViewVC: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var progressActivity: UIActivityIndicatorView!
    
    var url: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Reachability.isConnectedToNetwork() == true {
            print("Internet connection OK")
        } else {
            let alert = UIAlertController(title: "No Internet Connection", message: "Make sure your device is connected to the internet.", preferredStyle: .Alert)
            let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(action)
            
            presentViewController(alert, animated: true, completion: nil)
            
        }
        
        webView.delegate = self
        
        let mainUrl = NSURL(string: url)
        let requestObj = NSURLRequest(URL: mainUrl!)
        webView.loadRequest(requestObj)
        
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        progressActivity.stopAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        progressActivity.stopAnimating()
    }

}
