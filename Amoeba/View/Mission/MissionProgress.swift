//
//  MissionProgress.swift
//  Amoeba
//
//  Created by Ivan on 23/03/23.
//

import SwiftUI

struct MissionProgress: View {
    @EnvironmentObject var modelData: ModelData
    @State var isAnimating = false
    var friend: Friend
    var score: Double
    
    var body: some View {
        VStack {
            HStack {
                Image(friend.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 40)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 5)
                
                Text(friend.name)
                    .font(.title2)
                
                Spacer()
                
                FriendshipBadge(
                    symbol: getFriendshipStatus(score: score).symbol,
                    hideCircle: true
                )
            }
            
            ProgressBar(value: score)
                .frame(height: 10)
        }.padding(.horizontal)
    }
}

struct MissionProgress_Previews: PreviewProvider {
    static let modelData = ModelData()
    static let friend = modelData.friends[0]
    
    static var previews: some View {
        MissionProgress(
            friend: friend,
            score: 0.5
        ).environmentObject(modelData)
    }
}
