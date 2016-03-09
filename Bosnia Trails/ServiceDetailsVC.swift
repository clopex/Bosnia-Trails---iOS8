//
//  ServiceDetailsVC.swift
//  Bosnia Trails
//
//  Created by Adis Mulabdic on 3/8/16.
//  Copyright © 2016 Adis Mulabdic. All rights reserved.
//

import UIKit

class ServiceDetailsVC: UIViewController {

    @IBOutlet weak var imeStaze: UILabel!
    @IBOutlet weak var scroll: UIScrollView!
    @IBOutlet weak var duzinaStaze: UILabel!
    @IBOutlet weak var usponStaze: UILabel!
    @IBOutlet weak var spustStaze: UILabel!
    @IBOutlet weak var nadmorskaVisina: UILabel!
    @IBOutlet weak var nadmorskaNizina: UILabel!
    @IBOutlet weak var asfaltTeren: UILabel!
    @IBOutlet weak var makadamTeren: UILabel!
    @IBOutlet weak var utabanTeren: UILabel!
    
    let WIDTH: CGFloat = 320
    let HEIGHT: CGFloat = 200
    
    var staza: ListaStaza!
    var imgID: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadDataTrail()
    }

    @IBAction func slikaMapeTapp(sender: AnyObject) {
        
        performSegueWithIdentifier("slika", sender: imgID)
    }

    func loadDataTrail(){
        
        imeStaze.text = staza.imeStaze
        duzinaStaze.text = staza.duzinaStaze
        usponStaze.text = staza.visinaStaze
        imgID = staza.imgId
        
        switch imgID {
        case 1:
            spustStaze.text = spustRute[0]
            nadmorskaNizina.text = nadmorskaNizinaArray[0]
            nadmorskaVisina.text = nadmorskaVisinaArray[0]
            asfaltTeren.text = "Asfalt: \(asfalt[0])"
            makadamTeren.text = "Makadam: \(makadam[0])"
            utabanTeren.text = "Utaban put: \(utabanPut[0])"
            
            for var x = 1; x <= 4; x++ {
                let img = UIImage(named: "1_\(x)")
                let imgView = UIImageView(image: img)
                
                scroll.addSubview(imgView)
                
                imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 0, WIDTH, HEIGHT)
            }
            
            scroll.contentSize = CGSizeMake(WIDTH * 5, scroll.frame.size.height)
            
        case 2:
            
            spustStaze.text = spustRute[1]
            nadmorskaNizina.text = nadmorskaNizinaArray[1]
            nadmorskaVisina.text = nadmorskaVisinaArray[1]
            nadmorskaVisina.text = nadmorskaVisinaArray[1]
            asfaltTeren.text = "Asfalt: \(asfalt[1])"
            makadamTeren.text = "Makadam: \(makadam[1])"
            utabanTeren.text = "Utaban put: \(utabanPut[1])"
            
            for var x = 1; x <= 4; x++ {
                let img = UIImage(named: "1_\(x)")
                let imgView = UIImageView(image: img)
                
                scroll.addSubview(imgView)
                
                imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 0, WIDTH, HEIGHT)
            }
            
            scroll.contentSize = CGSizeMake(WIDTH * 5, scroll.frame.size.height)
            
        case 3:
            
            spustStaze.text = spustRute[2]
            nadmorskaNizina.text = nadmorskaNizinaArray[2]
            nadmorskaVisina.text = nadmorskaVisinaArray[2]
            nadmorskaVisina.text = nadmorskaVisinaArray[2]
            asfaltTeren.text = "Asfalt: \(asfalt[2])"
            makadamTeren.text = "Makadam: \(makadam[2])"
            utabanTeren.text = "Utaban put: \(utabanPut[2])"
            
            for var x = 1; x <= 4; x++ {
                let img = UIImage(named: "1_\(x)")
                let imgView = UIImageView(image: img)
                
                scroll.addSubview(imgView)
                
                imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 0, WIDTH, HEIGHT)
            }
            
            scroll.contentSize = CGSizeMake(WIDTH * 5, scroll.frame.size.height)
            
        case 4:
            
            spustStaze.text = spustRute[3]
            nadmorskaNizina.text = nadmorskaNizinaArray[3]
            nadmorskaVisina.text = nadmorskaVisinaArray[3]
            nadmorskaVisina.text = nadmorskaVisinaArray[3]
            asfaltTeren.text = "Asfalt: \(asfalt[3])"
            makadamTeren.text = "Makadam: \(makadam[3])"
            utabanTeren.text = "Utaban put: \(utabanPut[3])"
            
            for var x = 1; x <= 4; x++ {
                let img = UIImage(named: "2_\(x)")
                let imgView = UIImageView(image: img)
                
                scroll.addSubview(imgView)
                
                imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 0, WIDTH, HEIGHT)
            }
            
            scroll.contentSize = CGSizeMake(WIDTH * 5, scroll.frame.size.height)
            
        case 5:
            
            spustStaze.text = spustRute[4]
            nadmorskaNizina.text = nadmorskaNizinaArray[4]
            nadmorskaVisina.text = nadmorskaVisinaArray[4]
            nadmorskaVisina.text = nadmorskaVisinaArray[4]
            asfaltTeren.text = "Asfalt: \(asfalt[4])"
            makadamTeren.text = "Makadam: \(makadam[4])"
            utabanTeren.text = "Utaban put: \(utabanPut[4])"
            
            for var x = 1; x <= 4; x++ {
                let img = UIImage(named: "2_\(x)")
                let imgView = UIImageView(image: img)
                
                scroll.addSubview(imgView)
                
                imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 0, WIDTH, HEIGHT)
            }
            
            scroll.contentSize = CGSizeMake(WIDTH * 5, scroll.frame.size.height)
            
        case 6:
            
            spustStaze.text = spustRute[5]
            nadmorskaNizina.text = nadmorskaNizinaArray[5]
            nadmorskaVisina.text = nadmorskaVisinaArray[5]
            nadmorskaVisina.text = nadmorskaVisinaArray[5]
            asfaltTeren.text = "Asfalt: \(asfalt[5])"
            makadamTeren.text = "Makadam: \(makadam[5])"
            utabanTeren.text = "Utaban put: \(utabanPut[5])"
            
            for var x = 1; x <= 4; x++ {
                let img = UIImage(named: "2_\(x)")
                let imgView = UIImageView(image: img)
                
                scroll.addSubview(imgView)
                
                imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 0, WIDTH, HEIGHT)
            }
            
            scroll.contentSize = CGSizeMake(WIDTH * 5, scroll.frame.size.height)
            
        case 7:
            
            spustStaze.text = spustRute[6]
            nadmorskaNizina.text = nadmorskaNizinaArray[6]
            nadmorskaVisina.text = nadmorskaVisinaArray[6]
            nadmorskaVisina.text = nadmorskaVisinaArray[6]
            asfaltTeren.text = "Asfalt: \(asfalt[6])"
            makadamTeren.text = "Makadam: \(makadam[6])"
            utabanTeren.text = "Utaban put: \(utabanPut[6])"
            
            for var x = 1; x <= 4; x++ {
                let img = UIImage(named: "3_\(x)")
                let imgView = UIImageView(image: img)
                
                scroll.addSubview(imgView)
                
                imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 0, WIDTH, HEIGHT)
            }
            
            scroll.contentSize = CGSizeMake(WIDTH * 5, scroll.frame.size.height)
            
        case 8:
            
            spustStaze.text = spustRute[7]
            nadmorskaNizina.text = nadmorskaNizinaArray[7]
            nadmorskaVisina.text = nadmorskaVisinaArray[7]
            nadmorskaVisina.text = nadmorskaVisinaArray[7]
            asfaltTeren.text = "Asfalt: \(asfalt[7])"
            makadamTeren.text = "Makadam: \(makadam[7])"
            utabanTeren.text = "Utaban put: \(utabanPut[7])"
            
            for var x = 1; x <= 4; x++ {
                let img = UIImage(named: "3_\(x)")
                let imgView = UIImageView(image: img)
                
                scroll.addSubview(imgView)
                
                imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 0, WIDTH, HEIGHT)
            }
            
            scroll.contentSize = CGSizeMake(WIDTH * 5, scroll.frame.size.height)
            
        case 9:
            
            spustStaze.text = spustRute[8]
            nadmorskaNizina.text = nadmorskaNizinaArray[8]
            nadmorskaVisina.text = nadmorskaVisinaArray[8]
            nadmorskaVisina.text = nadmorskaVisinaArray[8]
            asfaltTeren.text = "Asfalt: \(asfalt[8])"
            makadamTeren.text = "Makadam: \(makadam[8])"
            utabanTeren.text = "Utaban put: \(utabanPut[8])"
            
            for var x = 1; x <= 4; x++ {
                let img = UIImage(named: "4_\(x)")
                let imgView = UIImageView(image: img)
                
                scroll.addSubview(imgView)
                
                imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 0, WIDTH, HEIGHT)
            }
            
            scroll.contentSize = CGSizeMake(WIDTH * 5, scroll.frame.size.height)
            
        case 10:
            
            spustStaze.text = spustRute[9]
            nadmorskaNizina.text = nadmorskaNizinaArray[9]
            nadmorskaVisina.text = nadmorskaVisinaArray[9]
            nadmorskaVisina.text = nadmorskaVisinaArray[9]
            asfaltTeren.text = "Asfalt: \(asfalt[9])"
            makadamTeren.text = "Makadam: \(makadam[9])"
            utabanTeren.text = "Utaban put: \(utabanPut[9])"
            
            for var x = 1; x <= 4; x++ {
                let img = UIImage(named: "5_\(x)")
                let imgView = UIImageView(image: img)
                
                scroll.addSubview(imgView)
                
                imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 0, WIDTH, HEIGHT)
            }
            
            scroll.contentSize = CGSizeMake(WIDTH * 5, scroll.frame.size.height)
            
            
        default:
            break
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "slika" {
            if let slikaMape = segue.destinationViewController as? SlikeMapaVC {
                slikaMape.iD = imgID
            }
        }
    }
}
