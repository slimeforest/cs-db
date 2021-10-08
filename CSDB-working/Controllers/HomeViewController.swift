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
    
    @IBOutlet weak var searchField: UITextField!
    
    var playerRequestManager = PlayerRequestManager()
    var retrievedPlayer: PlayerModel! {
        didSet{
            self.performSegue(withIdentifier: "searchToStats", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func searchButtonPressed(_ sender: Any) {
        if searchField.text != nil {
            let searchedName = searchField.text!
            playerRequestManager.fetchPlayerByName("\(searchedName)") { [weak self] playerObject in
                print(playerObject.playerMoneyEarned)
                self?.retrievedPlayer = playerObject
//                self?.performSegue(withIdentifier: "searchToStats", sender: self)
            }
        }else if searchField.text == nil {
            print("no name entered.")
        }else {
            print("unknown error")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "searchToStats" {
            let destinationVC = segue.destination as! PlayerStatsViewController
            
            destinationVC.username = retrievedPlayer!.playerUsername
            destinationVC.avatarURL = retrievedPlayer!.avatarURL
            destinationVC.timePlayed = retrievedPlayer!.playerTimePlayed
            
            destinationVC.kills = retrievedPlayer!.playerKills
            destinationVC.deaths = retrievedPlayer!.playerDeaths
            destinationVC.kd = retrievedPlayer!.playerKD
            destinationVC.damage = retrievedPlayer!.playerDamage
            
            destinationVC.matchesPlayed = retrievedPlayer!.playerMaychesPlayed
            destinationVC.wins = retrievedPlayer!.playerWins
            destinationVC.losses = retrievedPlayer!.playerLosses
            destinationVC.ties = retrievedPlayer!.playerTies
            destinationVC.mvps = retrievedPlayer!.playerMVPs
            destinationVC.moneyEarned = retrievedPlayer!.playerMoneyEarned
            
            destinationVC.headshotKills = retrievedPlayer!.playerHeadshots
            destinationVC.headshotPct = retrievedPlayer!.playerHeadshotPct
            destinationVC.shotsHit = retrievedPlayer!.playerShotsHit
            destinationVC.shotsFired = retrievedPlayer!.playerShotsFired
            destinationVC.shotAccuracy = retrievedPlayer!.playerShotsAccuracy
            
            destinationVC.bombsPlanted = retrievedPlayer!.playerBombsPlanted
            destinationVC.bombsDefused = retrievedPlayer!.playerBombsDefused
            destinationVC.hostagesRescued = retrievedPlayer!.playerHostagesRescued
            
            destinationVC.roundsPlayed = retrievedPlayer!.playerRoundsPlayed
            destinationVC.wlPct = retrievedPlayer!.playerWLPercentage
        }
    }
}

