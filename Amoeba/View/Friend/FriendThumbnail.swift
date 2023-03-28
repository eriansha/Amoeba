//
//  ProfileThumbnail.swift
//  Amoeba
//
//  Created by Ivan on 17/03/23.
//

//            AsyncImage(url: URL(string: url)) { image in image.image?.resizable()
//            }


import SwiftUI

struct FriendThumbnail: View {
    @EnvironmentObject var modelData: ModelData
    var friend: Friend
    let gradient = Gradient(colors: [Color.black.opacity(0), Color.black.opacity(0.5)]
    )
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            ZStack {
                Image(friend.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                
                LinearGradient(gradient: gradient, startPoint: .top, endPoint: .bottom)
            }
            .frame(width: 358, height: 514)
            .cornerRadius(30.0)
            .shadow(
                color: Color.black.opacity(0.2),
                radius: 10
            )
            
            VStack(alignment: .leading) {
                Text("\(friend.name), \(friend.age)")
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding(.bottom, -1) // workaround to reduce spacing between both text
                
                Text(friend.shortDescription)
                    .foregroundColor(.white)
                    .font(.caption)
                    .frame(width: 300, height: 0, alignment: .leading)
                    .truncationMode(.tail)
                    
            }.offset(x: 20, y: -20)
        }
    }
}

struct FriendThumbnail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        FriendThumbnail(
            friend: modelData.friends[8]
        )
        .environmentObject(modelData)
    }
}
