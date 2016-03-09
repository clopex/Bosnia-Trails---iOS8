//
//  TrailsCell.swift
//  Bosnia Trails
//
//  Created by Adis Mulabdic on 3/8/16.
//  Copyright © 2016 Adis Mulabdic. All rights reserved.
//

import UIKit

class TrailsCell: UITableViewCell {

    @IBOutlet weak var trailsImg: UIImageView!
    @IBOutlet weak var nazivStaze: UILabel!
    @IBOutlet weak var duzinaStaze: UILabel!
    @IBOutlet weak var visinaStaze: UILabel!
    
    var trails: ListaStaza!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override func drawRect(rect: CGRect) {
        trailsImg.layer.cornerRadius = trailsImg.frame.size.width / 2
        //trailsImg.layer.cornerRadius = 5
        trailsImg.clipsToBounds = true
    }
    
    func configureCell(trails: ListaStaza) {
        self.trails = trails
        
        nazivStaze.text = self.trails.imeStaze
        visinaStaze.text = self.trails.visinaStaze
        duzinaStaze.text = self.trails.duzinaStaze
        trailsImg.image = UIImage(named: "\(self.trails.imgId)")
    }

}
