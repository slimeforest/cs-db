//
//  PlayerRequestManager.swift
//  CSDB-working
//
//  Created by Jack Battle on 10/7/21.
//

import Foundation
import Alamofire


class PlayerRequestManager {
    let baseURL = "https://public-api.tracker.gg/v2/csgo/standard/profile/steam/"
    
    func fetchPlayerByName(_ playerName: String, with completionBlock: @escaping (PlayerModel) -> ()) {
        let headers : HTTPHeaders = [
            "TRN-Api-Key": "",
            "Accept": "application/json",
            "Accept-Encoding": "gzip"
        ]
        
        let fullURL = "\(baseURL)\(playerName)"
        
        AF.request("\(fullURL)", headers: headers).response {
            (responseData) in
            guard let data = responseData.data else {return}
            
            do{
                let player = try JSONDecoder().decode(PlayerData.self, from: data)
                
                
                let playerObject = PlayerModel(playerUsername: player.data.platformInfo.platformUserHandle ?? "Error loading data", playerUserID: player.data.platformInfo.platformUserId ?? "Error loading data", avatarURL: player.data.platformInfo.avatarUrl ?? "Error loading data", playerTimePlayed: player.data.segments[0].stats.timePlayed.displayValue ?? "Error loading data", playerKills: player.data.segments[0].stats.kills.displayValue ?? "Error loading data", playerDeaths: player.data.segments[0].stats.deaths.displayValue ?? "Error loading data", playerKD: player.data.segments[0].stats.kd.displayValue ?? "Error loading data", playerDamage: player.data.segments[0].stats.damage.displayValue ?? "Error loading data", playerHeadshots: player.data.segments[0].stats.headshots.displayValue ?? "Error loading data", playerShotsFired: player.data.segments[0].stats.shotsFired.displayValue ?? "Error loading data", playerShotsHit: player.data.segments[0].stats.shotsHit.displayValue ?? "Error loading data", playerShotsAccuracy: player.data.segments[0].stats.shotsAccuracy.displayValue ?? "Error loading data", playerHeadshotPct: player.data.segments[0].stats.headshotPct.displayValue ?? "Error loading data", playerMaychesPlayed: player.data.segments[0].stats.matchesPlayed.displayValue ?? "Error loading data", playerWins: player.data.segments[0].stats.wins.displayValue ?? "Error loading data", playerLosses: player.data.segments[0].stats.losses.displayValue ?? "Error loading data", playerTies: player.data.segments[0].stats.ties.displayValue ?? "Error loading data", playerMVPs: player.data.segments[0].stats.mvp.displayValue ?? "Error loading data", playerMoneyEarned: player.data.segments[0].stats.moneyEarned.displayValue ?? "Error loading data", playerBombsPlanted: player.data.segments[0].stats.bombsPlanted.displayValue ?? "Error loading data", playerBombsDefused: player.data.segments[0].stats.bombsDefused.displayValue ?? "Error loading data", playerHostagesRescued: player.data.segments[0].stats.hostagesRescued.displayValue ?? "Error loading data", playerRoundsPlayed: player.data.segments[0].stats.roundsPlayed.displayValue ?? "Error loading data", playerWLPercentage: player.data.segments[0].stats.wlPercentage.displayValue ?? "Error loading data")
                
//                print(playerObject.avatarURL)
                completionBlock(playerObject)
            }catch {
                print("error decoding: \(error)")
            }
            
        }
    }
}
