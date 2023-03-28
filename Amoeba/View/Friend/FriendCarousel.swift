//
//  FriendCarousel.swift
//  Amoeba
//
//  Created by Ivan on 20/03/23.
//

import SwiftUI

struct FriendCarousel: View {
    @EnvironmentObject var modelData: ModelData
//    @State private var currentIndex = 0
    let friends: [Friend]
    
//    func next() -> Void {
//        if currentIndex >= friends.count - 1 {
//            currentIndex = 0
//        } else {
//            currentIndex += 1
//        }
//    }
//
//    func previous() -> Void {
//        if currentIndex <= 0 {
//            currentIndex = friends.count - 1
//        } else {
//            currentIndex -= 1
//        }
//    }
    
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
            
//            HStack {
//                    Button {
//                        print("Tap next button")
//                        previous()
//                    } label: {
//                        Image(systemName: "lessthan.circle.fill"
//                        )
//                        .resizable()
//                        .frame(width: 50, height: 50)
//                        .foregroundColor(.white)
//                    }.shadow(
//                        color: Color.black.opacity(0.2),
//                        radius: 4
//                    )
//
//                Spacer()
//
//                    Button {
//                        print("Tap previous button")
//                        next()
//                    } label: {
//                        Image(systemName: "greaterthan.circle.fill"
//                        )
//                        .resizable()
//                        .frame(width: 50, height: 50)
//                        .foregroundColor(.white)
//                    }.shadow(
//                        color: Color.black.opacity(0.2),
//                        radius: 4
//                    )
//            }
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
