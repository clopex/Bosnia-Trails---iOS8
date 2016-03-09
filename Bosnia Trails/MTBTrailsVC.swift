//
//  MTBTrailsVC.swift
//  Bosnia Trails
//
//  Created by Adis Mulabdic on 3/8/16.
//  Copyright © 2016 Adis Mulabdic. All rights reserved.
//

import UIKit

class MTBTrailsVC: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var listaStazaTable = [ListaStaza]()
    var filterStaza = [ListaStaza]()
    var inSearchMode = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        
        searchBar.returnKeyType = UIReturnKeyType.Done

        for var i=0; i <= nazivStaze.count-1; ++i {
            let tmp = ListaStaza(imeStaze: nazivStaze[i], duzinaStaze: duzinaStaze[i], visinaStaze: visinaRute[i], imgId: slikaStaze[i])
            listaStazaTable.append(tmp)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if inSearchMode {
            return filterStaza.count
        }
        
        return listaStazaTable.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("TrailsCell") as? TrailsCell {
            
            let unos: ListaStaza!
            
            if inSearchMode {
                unos = filterStaza[indexPath.row]
            } else {
                unos = listaStazaTable[indexPath.row]
            }
            
            cell.configureCell(unos)
            return cell
        } else {
            return TrailsCell()
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var index: ListaStaza!
        
        if inSearchMode {
            index = filterStaza[indexPath.row]
        } else {
            index = listaStazaTable[indexPath.row]
        }
        
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        performSegueWithIdentifier("Details", sender: index)
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        view.endEditing(true)
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
        filterStaza = listaStazaTable.filter({ (text: ListaStaza) -> Bool in
        
            let range = text.imeStaze.rangeOfString(searchText)
            return range != nil
        })
        
        if(filterStaza.count == 0){
            inSearchMode = false
        } else {
            inSearchMode = true
        }
        self.tableView.reloadData()
        
    }

    @IBAction func homePressed(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "Details" {
            if let detailTrailVC = segue.destinationViewController as? ServiceDetailsVC {
                if let staza = sender as? ListaStaza {
                    detailTrailVC.staza = staza
                }
            }
        }
    }

}
