//
//  MissionView.swift
//  Amoeba
//
//  Created by Ivan on 21/03/23.
//

import SwiftUI

struct MissionView: View {
    @EnvironmentObject var modelData: ModelData
    @State var friend: Friend
    
    // Find corresponding friend's ID from state.
    // Noticed we binded environmentObject so it will sync to other views
    var friendIndex: Int {
        modelData.friends.firstIndex(where: { $0.id == friend.id })!
    }
    
    var body: some View {
        ZStack {
            ScrollView {
                ZStack {
                    
                    Rectangle()
                        .fill(.white)
                    
                    VStack {
                        FriendProfile(friend: friend)
                        
                        FriendshipStatus(score: Double(modelData.friends[friendIndex].totalCompletedMission) / Double(modelData.missions.count))
             
                        FriendshipMission(
                            friend: $modelData.friends[friendIndex]
                        )
                    }
                }
            }
        }
    }
}

struct MissionView_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        MissionView(friend: modelData.friends[13])
            .environmentObject(modelData)
    }
}
