//
//  FriendshipMission.swift
//  Amoeba
//
//  Created by Ivan on 21/03/23.
//

import SwiftUI

struct FriendshipMission: View {
    @EnvironmentObject var modelData: ModelData
    @Binding var friend: Friend
    
    var body: some View {
        VStack {
            HStack{
                Text("Friendship Missions")
                    .fontWeight(.bold)
                
                Spacer()
                
                Text("\(friend.totalCompletedMission) / \(friend.missionTracking.count)")
                    .fontWeight(.bold)
                    .foregroundColor(lightBlue)
            }.padding()
            
            List {
                ForEach($friend.missionTracking, id: \.self) { $missionTracking in
                    Toggle(isOn: $missionTracking.isCompleted) {
                        let mission = modelData.missions.first(where: {
                            element in element.id == $missionTracking.id.wrappedValue
                        })
                        
                        Text(mission?.task ?? "...")
                    }.toggleStyle(iOSCheckboxToggleStyle())
                }
            }.listStyle(.inset).frame(height: 300)
        }.background(.white)
    }
}

struct FriendshipMission_Previews: PreviewProvider {
    static let modelData = ModelData()
    static let friend = modelData.friends[0]
    
    static var previews: some View {
        FriendshipMission(
            friend: Binding.constant(friend)
        ).environmentObject(ModelData())
    }
}
