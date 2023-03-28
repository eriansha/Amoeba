//
//  FriendProfile.swift
//  Amoeba
//
//  Created by Ivan on 21/03/23.
//

import SwiftUI

struct FriendProfile: View {
    @EnvironmentObject var modelData: ModelData
    var friend: Friend
    
    var body: some View {
        VStack {
            Image(friend.imageName)
                .resizable()
//                .aspectRatio(contentMode: .fill)
                .scaledToFill()
                .frame(
                    width: 400,
                    height: 400
                )
            
            VStack {
                HStack {
                    Text("\(friend.name), \(friend.age)")
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    Button {
                        if let webUrl = URL(string: "https://wa.me/\(friend.wa)") {
                            UIApplication.shared.open(webUrl, options: [:], completionHandler: nil)
                        }
                    } label: {
                        Image("whatsapp")
                            .padding(.trailing)
                    }
                    
                    Button {
                        if let url = URL(string: "instagram//app/\(friend.instagram)") {
                            if UIApplication.shared.canOpenURL(url) {
                                UIApplication.shared.open(url, options: [:], completionHandler: nil)
                            } else {
                                if let webUrl = URL(string: "https://www.instagram.com/\(friend.instagram)") {
                                    UIApplication.shared.open(webUrl, options: [:], completionHandler: nil)
                                }
                            }
                        }
                    } label: {
                        Image("instagram")
                    }
                }
             
                HStack {
                    Text(friend.shortDescription)
                        .font(.caption)
                    
                    Spacer()
                }
            }
            .padding(.vertical, 18)
            .padding(.horizontal)
            .background(.white)
        }
    }
}

struct FriendProfile_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        FriendProfile(friend: modelData.friends[13])
            .environmentObject(modelData)
    }
}
