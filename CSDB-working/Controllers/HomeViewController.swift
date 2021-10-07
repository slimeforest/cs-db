//
//  ViewController.swift
//  CSDB-working
//
//  Created by Jack Battle on 10/5/21.
//

// https://coolors.co/177e89-084c61-d02a25-ffc857-323031


import UIKit
import Alamofire

class HomeViewController: UIViewController {
    
    let playerRequestManager = PlayerRequestManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBAction func searchButtonPressed(_ sender: Any) {
        playerRequestManager.fetchPlayerByName("jackonno78")
    }
}


