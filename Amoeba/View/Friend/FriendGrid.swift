//
//  FriendGrid.swift
//  Amoeba
//
//  Created by Ivan on 23/03/23.
//

import SwiftUI

struct FriendGrid: View {
    @EnvironmentObject var modelData: ModelData
    var friends: [Friend]
    
    let columns = [
        GridItem(.adaptive(minimum: 120))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 10
            ) {
                ForEach(modelData.friends) { friend in
                    NavigationLink {
                        MissionView(friend: friend)
                    } label: {
                        HStack {
                            
                            Spacer()
                            
                            VStack {
                                Image(friend.imageName)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 90, height: 90)
                                    .cornerRadius(20)
                                    .padding(.bottom, 8)
                                
                                Text("\(friend.name), \(friend.age)")
                                    .frame(width: 100, height: 10)
                                    .truncationMode(.tail)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            
                            Spacer()
                        }.padding()
                    }
                }
            }
        }.padding(.top, 8)
    }
}

struct FriendGrid_Previews: PreviewProvider {
    static let modelData = ModelData()
    static let friends = modelData.friends
    
    static var previews: some View {
        FriendGrid(friends: friends)
            .environmentObject(modelData)
            .background(lightBlue)
    }
}
