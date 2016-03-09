//
//  SlikeMapaVC.swift
//  Bosnia Trails
//
//  Created by Adis Mulabdic on 3/7/16.
//  Copyright © 2016 Adis Mulabdic. All rights reserved.
//

import UIKit

class SlikeMapaVC: UIViewController {

    var iD: Int!
    var tempID: Int!
    
    @IBOutlet weak var imageMapa: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tempID = iD
        imageMapa.image = UIImage(named: "mapa_\(iD)")
        // Do any additional setup after loading the view.
    }


}
