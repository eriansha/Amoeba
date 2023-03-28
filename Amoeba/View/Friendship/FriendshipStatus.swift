//
//  FriendshipStatus.swift
//  Amoeba
//
//  Created by Ivan on 21/03/23.
//

import SwiftUI

struct FriendshipStatus: View {
    var score: Double
    private var friendship: Friendship
    
    init(score: Double) {
        self.score = score
        self.friendship = getFriendshipStatus(score: score)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Your Progress")
                .font(.title3)
                .bold()
            
            HStack {
                FriendshipBadge(symbol: friendship.symbol)
                
                VStack(alignment: .leading) {
                    Text(friendship.level.rawValue)
                        .font(.body)
                        .bold()
                    
                    Text(friendship.description)
                        .font(.caption)
                }
                
                Spacer()
            }
        }.padding(.horizontal)
    }
}

struct FriendshipStatus_Previews: PreviewProvider {
    static var previews: some View {
        FriendshipStatus(score: 0.2)
    }
}
