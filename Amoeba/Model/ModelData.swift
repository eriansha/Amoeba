//
//  ModelData.swift
//  Amoeba
//
//  Created by Ivan on 20/03/23.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var friends: [Friend] = load("FriendData.json")
    @Published var missions: [Mission] = load("MissionData.json")
    
    var friendByBondingScore: [Friend] {
        friends.sorted {
            $0.totalCompletedMission > $1.totalCompletedMission
        }
    }
    
//    init() {
//        var friends: [Friend] = load("FriendData.json")
//        var missions: [Mission] = load("MissionData.json")
//
//        UserDefaults.standard.set(friends, forKey: "friends")
//        UserDefaults.standard.set(missions, forKey: "missions")
//    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
