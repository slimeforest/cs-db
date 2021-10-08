
import Foundation

struct PlayerData: Decodable {
    let data: Data
}

struct Data: Decodable {
    let platformInfo: PlatformInfo
    let segments: [Segments]
}

struct PlatformInfo: Decodable {
    let platformSlug: String?
    let platformUserId: String?
    let platformUserHandle: String?
    let avatarUrl: String?
}

struct Segments: Decodable {
    let stats: Stats
}

struct Stats: Decodable {
    let timePlayed: TimePlayed
    let kills: Kills
    let deaths: Deaths
    let kd: KillDeath
    let damage: Damage
    let headshots: Headshots
    let shotsFired: ShotsFired
    let shotsHit: ShotsHit
    let shotsAccuracy: ShotsAccuracy
    let bombsPlanted: BombsPlanted
    let bombsDefused: BombsDefused
    let moneyEarned: MoneyEarned
    let hostagesRescued: HostagesRescued
    let mvp: MVP
    let wins: Wins
    let ties: Ties
    let matchesPlayed: MatchesPlayed
    let losses: Losses
    let roundsPlayed: RoundsPlayed
    let roundsWon: RoundsWon
    let wlPercentage: WLPercentage
    let headshotPct: HeadshotPct
}

struct TimePlayed: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct Kills: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct Deaths: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct KillDeath: Decodable {
    let percentile: Float?
    let value: Float?
    let displayValue: String?
}

struct Damage: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct Headshots: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct ShotsFired: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct ShotsHit: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct ShotsAccuracy: Decodable {
    let percentile: Float?
    let value: Float?
    let displayValue: String?
}

struct BombsPlanted: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct BombsDefused: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct MoneyEarned: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct HostagesRescued: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct MVP: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct Wins: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct Ties: Decodable {
    let value: Int?
    let displayValue: String?
}

struct MatchesPlayed: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct Losses: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct RoundsPlayed: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct RoundsWon: Decodable {
    let percentile: Float?
    let value: Int?
    let displayValue: String?
}

struct WLPercentage: Decodable {
    let percentile: Float?
    let value: Float?
    let displayValue: String?
}

struct HeadshotPct: Decodable {
    let percentile: Float?
    let value: Float?
    let displayValue: String?
}
