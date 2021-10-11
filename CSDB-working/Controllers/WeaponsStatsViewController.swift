//
//  WeaponsStatsViewController.swift
//  CSDB-working
//
//  Created by Jack Battle on 10/11/21.
//

import Foundation
import UIKit

class WeaponStatsViewController: UITableViewController {
    let categories: [String] = ["Pistols", "Rifles", "SMGs", "Heavy", "Gear"]
    var selectedcategory: [String] = []
    
    override func viewDidLoad() {
        print("loaded weapon categories")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath)

        cell.textLabel?.text = categories[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedcategory = [categories[indexPath.row]]
        performSegue(withIdentifier: "categoryToItems", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "categoryToItems" {
            let destinationVC = segue.destination as! ChosenCategoryViewController
            
            destinationVC.chosenCategory = selectedcategory
        }
    }
    
   
}
