//
//  ChosenCategoryViewController.swift
//  CSDB-working
//
//  Created by Jack Battle on 10/11/21.
//

import Foundation
import UIKit


class ChosenCategoryViewController: UITableViewController {
    let pistols: [String] = ["USP-S & P2000","Glock-18", "Desert Eagle", "Dual Berettas", "Five-SeveN", "Tec-9"]
    let rifles: [String] = ["AK-47","M4A4 & M4A1-S","AWP","AUG","FAMAS","Galil AR","SG553", "SSG 08", "SCAR-20", "G3SG1"]
    let smgs: [String] = ["Mac-10", "MP9", "P90", "PP-Bizon", "UMP-45", "MP7"]
    let heavy: [String] = ["MAG-7", "Nova", "Sawed-Off", "XM1014", "Negev", "M249"]
    let gear: [String] = ["Zeus x27"]
    
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
