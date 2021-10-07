//
//  PlayerRequestManager.swift
//  CSDB-working
//
//  Created by Jack Battle on 10/7/21.
//

import Foundation
import Alamofire

struct PlayerRequestManager {
    let baseURL = "https://public-api.tracker.gg/v2/csgo/standard/profile/steam/"
    
    let playerInfo = "player.data.platformInfo"
    let playerStats = "player.data.segments[0].stats"
    
    func fetchPlayerByName(_ playerName: String) {
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
               
                let playerObject = PlayerModel(playerUsername: player.data.platformInfo.platformUserHandle, playerUserID: player.data.platformInfo.platformUserId, avatarURL: player.data.platformInfo.avatarUrl, playerTimePlayed: player.data.segments[0].stats.timePlayed.displayValue, playerKills: player.data.segments[0].stats.kills.displayValue, playerDeaths: player.data.segments[0].stats.deaths.displayValue, playerKD: player.data.segments[0].stats.kd.displayValue, playerDamage: player.data.segments[0].stats.damage.displayValue, playerHeadshots: player.data.segments[0].stats.headshots.displayValue, playerShotsFired: player.data.segments[0].stats.shotsFired.displayValue, playerShotsHit: player.data.segments[0].stats.shotsHit.displayValue, playerShotsAccuracy: player.data.segments[0].stats.shotsAccuracy.displayValue, playerHeadshotPct: player.data.segments[0].stats.headshotPct.displayValue, playerMaychesPlayed: player.data.segments[0].stats.matchesPlayed.displayValue, playerWins: player.data.segments[0].stats.wins.displayValue, playerLosses: player.data.segments[0].stats.losses.displayValue, playerTies: player.data.segments[0].stats.ties.displayValue, playerMVPs: player.data.segments[0].stats.mvp.displayValue, playerMoneyEarned: player.data.segments[0].stats.moneyEarned.displayValue, playerBombsPlanted: player.data.segments[0].stats.bombsPlanted.displayValue, playerBombsDefused: player.data.segments[0].stats.bombsDefused.displayValue, playerHostagesRescued: player.data.segments[0].stats.hostagesRescued.displayValue, playerRoundsPlayed: player.data.segments[0].stats.roundsPlayed.displayValue, playerWLPercentage: player.data.segments[0].stats.wlPercentage.displayValue)
                
                print(playerObject.playerDamage)
                
                
            }catch {
                print("error decoding: \(error)")
            }
        }
    }
}
