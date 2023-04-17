//
//  FriendCarousel.swift
//  Amoeba
//
//  Created by Ivan on 20/03/23.
//

import SwiftUI

struct FriendCarousel: View {
    @EnvironmentObject var modelData: ModelData
    let friends: [Friend]

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(friends) { friend in
                    NavigationLink {
                        MissionView(
                            friend: friend
                        )
                    } label: {
                        FriendThumbnail(
                            friend: friend
                        )
                    }.padding(.horizontal, 12)
                }
            }
        }
    }
}

struct FriendCarousel_Previews: PreviewProvider {
    static let friends = ModelData().friends
    
    static var previews: some View {
        FriendCarousel(friends: friends
        ).environmentObject(ModelData())
    }
}
