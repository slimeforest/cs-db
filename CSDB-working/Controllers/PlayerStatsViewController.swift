//
//  PlayerStatsViewController.swift
//  CSDB-working
//
//  Created by Jack Battle on 10/5/21.
//

import Foundation
import UIKit

class PlayerStatsViewController: UIViewController {
    //MARK: - user info labels
    @IBOutlet weak var profilePictureView: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    //MARK: - time played label
    @IBOutlet weak var timePlayedLabel: UILabel!
    //MARK: - match info labels
    @IBOutlet weak var matchesPlayedLabel: UILabel!
    @IBOutlet weak var winsLabel: UILabel!
    @IBOutlet weak var lossesLabel: UILabel!
    @IBOutlet weak var tiesLabel: UILabel!
    @IBOutlet weak var mvpLabel: UILabel!
    @IBOutlet weak var moneyEarnedLabel: UILabel!
    //MARK: - objective labels
    @IBOutlet weak var bombsPlantedLabel: UILabel!
    @IBOutlet weak var bombsDefusedLabel: UILabel!
    @IBOutlet weak var hostagesRescuedLabel: UILabel!
    //MARK: - kills labels
    @IBOutlet weak var killsLabel: UILabel!
    @IBOutlet weak var deathsLabel: UILabel!
    @IBOutlet weak var kdLabel: UILabel!
    @IBOutlet weak var damageLabel: UILabel!
    //MARK: - accuracy labels
    @IBOutlet weak var headshotKillsLabel: UILabel!
    @IBOutlet weak var headshotPctLabel: UILabel!
    @IBOutlet weak var shotsHitLabel: UILabel!
    @IBOutlet weak var shotsFiredLabel: UILabel!
    @IBOutlet weak var shotAccuracyLabel: UILabel!
    //MARK: - rounds labels
    @IBOutlet weak var roundsPlayedLabel: UILabel!
    @IBOutlet weak var wlPctLabel: UILabel!
    
    override func viewDidLoad() {
        print("successfully loaded second VC")
    }
    
}
