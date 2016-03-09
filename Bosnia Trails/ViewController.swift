//
//  ViewController.swift
//  Bosnia Trails
//
//  Created by Adis Mulabdic on 3/7/16.
//  Copyright © 2016 Adis Mulabdic. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var segmentTrails: UISegmentedControl!
    @IBOutlet weak var mtbTrailsImg: UIImageView!
    @IBOutlet weak var serviceImage: UIImageView!
    @IBOutlet weak var mtbLbl: UILabel!
    @IBOutlet weak var shopLbl: UILabel!
    @IBOutlet weak var soonLbl: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

   
    @IBAction func segmentChange(sender: UISegmentedControl) {
        
        switch segmentTrails.selectedSegmentIndex {
        case 0:
            mtbTrailsImg.hidden = false
            mtbLbl.hidden = false
            serviceImage.hidden = false
            shopLbl.hidden = false
            soonLbl.hidden = true
            
        case 1:
            mtbTrailsImg.hidden = true
            mtbLbl.hidden = true
            serviceImage.hidden = true
            shopLbl.hidden = true
            soonLbl.hidden = false
            
        default:
            break
        }
    }

    override func viewDidAppear(animated: Bool) {
        mainImage.layer.cornerRadius = 5
        mainImage.layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 0.5).CGColor
        mainImage.layer.shadowOpacity = 0.8
        mainImage.layer.shadowRadius = 5.0
        mainImage.layer.shadowOffset = CGSizeMake(0.0, 2.0)
        mainImage.clipsToBounds = true
        
        mtbTrailsImg.layer.cornerRadius = mtbTrailsImg.frame.size.width / 2
        mtbTrailsImg.clipsToBounds = true
    }
    
    @IBAction func trailsVC(sender: UITapGestureRecognizer) {
        
        self.performSegueWithIdentifier("test", sender: nil)
    }
    

}

