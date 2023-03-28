//
//  Friendship.swift
//  Amoeba
//
//  Created by Ivan on 21/03/23.
//

import Foundation

enum FriendshipLevel: String, CaseIterable, Identifiable {
    case anonymous = "Anonymous"
    case acquaintance = "Acquaintance"
    case friend = "Friend"
    case closeFriend = "Close Friend"
    case bestFriend = "Best Friend"
    case soulFriend = "Soul Frined"
    
    var id: String { rawValue }
}

enum FriendshipSymbol: String, CaseIterable, Identifiable {
    case level1 = "🤔"
    case level2 = "🙂"
    case level3 = "😁"
    case level4 = "😝"
    case level5 = "🤣"
    case level6 = "🤪"

    var id: String { rawValue }
}

func getFriendshipStatus(score: Double) -> Friendship {
    let friendship: Friendship
    
    if score >= 1.0 {
        friendship = Friendship(
            level: FriendshipLevel.soulFriend,
            description: "Someone you have unbreakable connection and bond spiritually or emotionally with.",
            symbol: FriendshipSymbol.level6
        )
    } else if score >= 0.8 {
        friendship = Friendship(
            level: FriendshipLevel.bestFriend,
            description: "Someone you trust and share a special bond with.",
            symbol: FriendshipSymbol.level5
        )
    } else if score >= 0.6 {
        friendship = Friendship(
            level: FriendshipLevel.closeFriend,
            description: "Someone you share a deeper level of trust and have a strong bond.",
            symbol: FriendshipSymbol.level4
        )
    } else if score >= 0.4 {
        friendship = Friendship(
            level: FriendshipLevel.friend,
            description: "Someone you know well and enjoy spending time with a slight emotional connection.",
            symbol: FriendshipSymbol.level3
        )
    } else if score >= 0.2 {
        friendship = Friendship(
            level: FriendshipLevel.acquaintance,
            description: "Someone you know casually and spend time together briefly.",
            symbol: FriendshipSymbol.level2
        )
    } else {
        friendship = Friendship(
            level: FriendshipLevel.anonymous,
            description: "Someone you haven’t get to know and interact with.",
            symbol: FriendshipSymbol.level1
        )
    }
    
    return friendship
}

struct Friendship {
    var level: FriendshipLevel = FriendshipLevel.anonymous
    var description: String
    var symbol: FriendshipSymbol = FriendshipSymbol.level1
}
