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
                print("player returned is: \(player.data.platformInfo.platformUserHandle)")
                print("player's avatar url is: \(player.data.platformInfo.avatarUrl)")
//                print("entire JSON object: \(player)")
                print("players number of bombs defused: \(player.data.segments[0].stats.bombsPlanted.displayValue)")
                
            }catch {
                print("error decoding: \(error)")
            }
        }
    }
}
