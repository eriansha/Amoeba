//
//  MissionBoardView.swift
//  Amoeba
//
//  Created by Ivan on 23/03/23.
//

import SwiftUI

struct MissionBoardView: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        VStack {
            MissionBoardHeader()
                .frame(width: .infinity, height: 250)
            
            List {
                ForEach(modelData.friendByBondingScore) { friend in
                    MissionProgress(
                        friend: friend,
                        score: Double(friend.totalCompletedMission) / Double(modelData.missions.count)
                    )
                    .listRowSeparator(.hidden)
                }
            }.listStyle(.plain)
            
            FriendshipTips(textColor: Color.black)
        }
    }
}

struct MissionBoardView_Previews: PreviewProvider {
    static var previews: some View {
        MissionBoardView()
            .environmentObject(ModelData())
    }
}
