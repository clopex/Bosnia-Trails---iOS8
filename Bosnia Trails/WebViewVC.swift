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
        webView.delegate = self
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "checkForInternet", name: "ReachStatusChanged", object: nil)
        self.checkForInternet()
        
    }
    
    func checkForInternet(){
        if reachabilityStatus == kNOTREACH {
            
            let alert = UIAlertController(title: "No Internet Connection", message: "Make sure your device is connected to the internet.", preferredStyle: .Alert)
            
            /*alert.addAction(UIAlertAction(title: "OK", style: .Default, handler: { (action: UIAlertAction!) in
                self.navigationController?.popToRootViewControllerAnimated(true)
            }))*/
            //alert.dismissViewControllerAnimated(true, completion: nil)
            
            let action = UIAlertAction(title: "OK", style: .Default, handler: { (action) -> Void in
                print("OKKKKK")
            })
            alert.addAction(action)
            //let action = UIAlertAction(title: "OK", style: .Default, handler: {(action:UIAlertAction!) in self.dismissViewControllerAnimated(true, completion: nil)})
            //alert.addAction(action)
            
            presentViewController(alert, animated: true, completion: nil)
            
        } else if reachabilityStatus == kREACHWIFI {
            
            let mainUrl = NSURL(string: url)
            let requestObj = NSURLRequest(URL: mainUrl!)
            webView.loadRequest(requestObj)
            //print("Internet connection OK")
            
        } else if reachabilityStatus == kREACHWLAN {
            
            let mainUrl = NSURL(string: url)
            let requestObj = NSURLRequest(URL: mainUrl!)
            webView.loadRequest(requestObj)
            //print("Internet connection OK")
        }
    }
    
    deinit {
        NSNotificationCenter.defaultCenter().removeObserver(self, name: "ReachStatusChanged", object: nil)
    }
    func webViewDidStartLoad(webView: UIWebView) {
        progressActivity.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        progressActivity.stopAnimating()
    }

}
