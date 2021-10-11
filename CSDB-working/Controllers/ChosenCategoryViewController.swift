//
//  ChosenCategoryViewController.swift
//  CSDB-working
//
//  Created by Jack Battle on 10/11/21.
//

import Foundation
import UIKit


class ChosenCategoryViewController: UITableViewController {
    let pistols: [String] = ["USP-S","Glock", "deagle"]
    let rifles: [String] = ["ak47","m4a4","aug"]
    let smgs: [String] = ["p90", "bizon", "mac 10"]
    let heavy: [String] = ["nova", "negev", "swag 7"]
    let gear: [String] = ["Taser"]
    
    var chosenCategory: [String] = []
    
    override func viewDidLoad() {
        print(chosenCategory)
        switch chosenCategory {
        case ["Pistols"]:
            chosenCategory = pistols
        case ["Rifles"]:
            chosenCategory = rifles
        case ["SMGs"]:
            chosenCategory = smgs
        case ["Heavy"]:
            chosenCategory = heavy
        case ["Gear"]:
            chosenCategory = gear
        default:
            print("error setting category")
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chosenCategory.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weaponCell", for: indexPath)
        cell.textLabel?.text = chosenCategory[indexPath.row]
        return cell
    }
}
