//
//  Friend.swift
//  Amoeba
//
//  Created by Ivan on 20/03/23.
//

import Foundation

struct Friend: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var age: Int
    var shortDescription: String
    var wa: String
    var instagram: String
    var missionTracking: [MissionTracking]
    
    var totalCompletedMission: Int {
        missionTracking.filter {
            $0.isCompleted
        }.count
    }
    
    struct MissionTracking: Hashable, Codable,Identifiable {
        var id: Int
        var isCompleted: Bool
    }
}
