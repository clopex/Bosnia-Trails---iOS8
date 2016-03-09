//
//  ServicesVC.swift
//  Bosnia Trails
//
//  Created by Adis Mulabdic on 3/8/16.
//  Copyright © 2016 Adis Mulabdic. All rights reserved.
//

import UIKit

class ServicesVC: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var listaGradova = [Servisi]()
    var filterGradova = [Servisi]()
    var inSearchMode = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
        
        for var i=0; i <= imeGrada.count-1; ++i {
            let tmp = Servisi(nazivServisa: nazivRadnje[i], gradServisa: imeGrada[i], imgId: slikaRadnje[i])
            
            listaGradova.append(tmp)
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if inSearchMode {
            return filterGradova.count
        }
        return listaGradova.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("ServiceCell") as? ServicesCell {
            let unos: Servisi!
            
            if inSearchMode {
                unos = filterGradova[indexPath.row]
            } else {
                unos = listaGradova[indexPath.row]
            }
            cell.configureCell(unos)
            return cell
        } else {
            return ServicesCell()
        }
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        var index: Servisi!
        
        if inSearchMode {
            index = filterGradova[indexPath.row]
        } else {
            index = listaGradova[indexPath.row]
        }
        
        self.tableView.deselectRowAtIndexPath(indexPath, animated: true)
        performSegueWithIdentifier("ServiceDetails", sender: index)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ServiceDetails" {
            if let serviceDetail = segue.destinationViewController as? ServisInfoVC {
                if let tmp = sender as? Servisi {
                    serviceDetail.infoServis = tmp
                }
            }
        }
    }
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        view.endEditing(true)
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        
        filterGradova = listaGradova.filter({ (text: Servisi) -> Bool in
            
            let range = text.gradServisa.rangeOfString(searchText)
            return range != nil
        })
        
        if(filterGradova.count == 0){
            inSearchMode = false
        } else {
            inSearchMode = true
        }
        self.tableView.reloadData()    }

    @IBAction func homeTapp(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    

}
