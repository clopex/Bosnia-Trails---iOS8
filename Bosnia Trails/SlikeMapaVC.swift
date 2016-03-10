//
//  SlikeMapaVC.swift
//  Bosnia Trails
//
//  Created by Adis Mulabdic on 3/7/16.
//  Copyright © 2016 Adis Mulabdic. All rights reserved.
//

import UIKit

class SlikeMapaVC: UIViewController,UIWebViewDelegate {

    var iD: Int!
    var tempID: Int!
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var progresIndicator: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.delegate = self
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "checkForInternet", name: "ReachStatusChanged", object: nil)
        self.checkForInternet()
        
    }
    
    func checkForInternet(){
        if reachabilityStatus == kNOTREACH {
            
            let alert = UIAlertController(title: "No Internet Connection", message: "Make sure your device is connected to the internet.", preferredStyle: .Alert)
            let action = UIAlertAction(title: "OK", style: .Default, handler: nil)
            alert.addAction(action)
            
            presentViewController(alert, animated: true, completion: nil)
            
        } else if reachabilityStatus == kREACHWIFI {
            
            tempID = iD - 1
            let url = maps[tempID]
            let mainUrl = NSURL(string: url)
            let requestObj = NSURLRequest(URL: mainUrl!)
            webView.loadRequest(requestObj)
            
        } else if reachabilityStatus == kREACHWLAN {
            
            tempID = iD - 1
            let url = maps[tempID]
            let mainUrl = NSURL(string: url)
            let requestObj = NSURLRequest(URL: mainUrl!)
            webView.loadRequest(requestObj)
        }
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "ReachStatusChanged", object: nil)
    }
    
    
    
    func webViewDidStartLoad(webView: UIWebView) {
        progresIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        progresIndicator.stopAnimating()
    }


}
