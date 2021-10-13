//
//  SideMenuViewController.swift
//  CSDB-working
//
//  Created by Jack Battle on 10/13/21.
//

import Foundation
import UIKit
import SafariServices

class SideMenuViewController: UITableViewController {
    let items: [String] = ["Latest CS:GO News", "View HTLV Team Rankings"]
    let darkColor = UIColor(red: 21/255.0, green: 20/255.0, blue: 20/255.0, alpha: 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.backgroundColor = darkColor
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        cell.backgroundColor = darkColor
        cell.textLabel?.textColor = .link
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        
        case 0:
            print("csgo news pressed")
            if let csNetURL = URL(string: "https://store.steampowered.com/news/app/730?updates=true"){

                let safariVC = SFSafariViewController(url: csNetURL)

                present(safariVC, animated: true, completion: nil)
            }
        case 1:
            print("hltv pressed")
            if let hltvURL = URL(string: "https://www.hltv.org/ranking/teams") {
                let safariVC = SFSafariViewController(url: hltvURL)
                present(safariVC, animated: true, completion: nil)
            }
        default:
            print("error")
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}
