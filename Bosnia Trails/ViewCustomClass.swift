//
//  ViewCustomClass.swift
//  Bosnia Trails
//
//  Created by Adis Mulabdic on 3/7/16.
//  Copyright © 2016 Adis Mulabdic. All rights reserved.
//

import UIKit

class ViewCustom: UIView {
    
    override func awakeFromNib() {
        
        layer.cornerRadius = 2.0
        layer.shadowColor = UIColor(red: SHADOW_COLOR, green: SHADOW_COLOR, blue: SHADOW_COLOR, alpha: 1.0).CGColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 2.0
        layer.shadowOffset = CGSizeMake(0.0, 2.0)
    }
    
}
