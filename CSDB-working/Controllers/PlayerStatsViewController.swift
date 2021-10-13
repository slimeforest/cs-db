//
//  PlayerStatsViewController.swift
//  CSDB-working
//
//  Created by Jack Battle on 10/5/21.
//

import Foundation
import UIKit
import Kingfisher
import SafariServices

class PlayerStatsViewController: UIViewController {
    //MARK: - user info labels
    @IBOutlet weak var profilePictureView: UIImageView!
    var avatarURL: String = ""
    @IBOutlet weak var usernameLabel: UILabel!
    var username: String = ""
    var userID: String = "Error loading steam ID"
    //MARK: - time played label
    @IBOutlet weak var timePlayedLabel: UILabel!
    var timePlayed: String = ""
    //MARK: - match info labels
    @IBOutlet weak var matchesPlayedLabel: UILabel!
    var matchesPlayed: String = ""
    @IBOutlet weak var winsLabel: UILabel!
    var wins: String = ""
    @IBOutlet weak var lossesLabel: UILabel!
    var losses: String = ""
    @IBOutlet weak var tiesLabel: UILabel!
    var ties: String = ""
    @IBOutlet weak var mvpLabel: UILabel!
    var mvps: String = ""
    @IBOutlet weak var moneyEarnedLabel: UILabel!
    var moneyEarned: String = ""
    //MARK: - objective labels
    @IBOutlet weak var bombsPlantedLabel: UILabel!
    var bombsPlanted: String = ""
    @IBOutlet weak var bombsDefusedLabel: UILabel!
    var bombsDefused: String = ""
    @IBOutlet weak var hostagesRescuedLabel: UILabel!
    var hostagesRescued: String = ""
    //MARK: - kills labels
    @IBOutlet weak var killsLabel: UILabel!
    var kills: String = ""
    @IBOutlet weak var deathsLabel: UILabel!
    var deaths: String = ""
    @IBOutlet weak var kdLabel: UILabel!
    var kd: String = ""
    @IBOutlet weak var damageLabel: UILabel!
    var damage: String = ""
    //MARK: - accuracy labels
    @IBOutlet weak var headshotKillsLabel: UILabel!
    var headshotKills: String = ""
    @IBOutlet weak var headshotPctLabel: UILabel!
    var headshotPct: String = ""
    @IBOutlet weak var shotsHitLabel: UILabel!
    var shotsHit: String = ""
    @IBOutlet weak var shotsFiredLabel: UILabel!
    var shotsFired: String = ""
    @IBOutlet weak var shotAccuracyLabel: UILabel!
    var shotAccuracy: String = ""
    //MARK: - rounds labels
    @IBOutlet weak var roundsPlayedLabel: UILabel!
    var roundsPlayed: String = ""
    @IBOutlet weak var wlPctLabel: UILabel!
    var wlPct: String = ""
    //MARK: - actual view controller stuff
    
    
    
    
    
    override func viewDidLoad() {
        print("successfully loaded second VC")
        let displayedAvatarURL = URL(string: avatarURL)
        profilePictureView.kf.setImage(with: displayedAvatarURL)
        usernameLabel?.text = username
        
        timePlayedLabel.text = timePlayed
        
        killsLabel.text = kills
        deathsLabel.text = deaths
        kdLabel.text = kd
        damageLabel.text = damage
        
        matchesPlayedLabel.text = matchesPlayed
        winsLabel.text = wins
        lossesLabel.text = losses
        tiesLabel.text = ties
        mvpLabel.text = mvps
        moneyEarnedLabel.text = moneyEarned
        
        headshotKillsLabel.text = headshotKills
        headshotPctLabel.text = headshotPct
        shotsHitLabel.text = shotsHit
        shotsFiredLabel.text = shotsFired
        shotAccuracyLabel.text = shotAccuracy
        
        roundsPlayedLabel.text = roundsPlayed
        wlPctLabel.text = wlPct
    }
    
    @IBAction func viewSteamProfilePressed(_ sender: Any) {
        if let profileURL = URL(string: "https://steamcommunity.com/profiles/\(userID)") {
            let safariVC = SFSafariViewController(url: profileURL)
            present(safariVC, animated: true, completion: nil)
        }
    }
    
}
