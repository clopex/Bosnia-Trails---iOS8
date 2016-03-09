//
//  ServicesCell.swift
//  Bosnia Trails
//
//  Created by Adis Mulabdic on 3/8/16.
//  Copyright © 2016 Adis Mulabdic. All rights reserved.
//

import UIKit

class ServicesCell: UITableViewCell {
    
    @IBOutlet weak var slikaServis: UIImageView!
    @IBOutlet weak var nazivServisa: UILabel!
    @IBOutlet weak var gradServisa: UILabel!
    
    var servisi: Servisi!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func drawRect(rect: CGRect) {
        slikaServis.layer.cornerRadius = 10
        slikaServis.clipsToBounds = true
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(servisi: Servisi) {
        self.servisi = servisi
        
        gradServisa.text = self.servisi.gradServisa
        nazivServisa.text = self.servisi.nazivServisa
        slikaServis.image = UIImage(named: "\(self.servisi.imgId)")
    }
}
