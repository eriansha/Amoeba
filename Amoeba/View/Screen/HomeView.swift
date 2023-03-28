//
//  HomeView.swift
//  Amoeba
//
//  Created by Ivan on 15/03/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showSlideshow: Bool = true
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient:
                                Gradient(colors: [Color("LightBlue"), Color("MediumBlue")]), startPoint: .topLeading, endPoint: .bottomLeading)
                .edgesIgnoringSafeArea(.all)
                
                BackgroundBlob()
                
                VStack {
                    Text("Discover New Friend")
                        .font(.title)
                        .foregroundColor(.white)
                        .bold()
                    
                    NavigationLink {
                        MissionBoardView()
                    } label: {
                        Text("Check Friendship Progress")
                            .font(.caption)
                            .bold()
                        .padding(.horizontal, 14)
                        .padding(.vertical, 2)
                        .background(.white)
                        .cornerRadius(10)
                        .shadow(radius: 2.0)
                    }
                    
                    HStack {
                        Button {
                            self.showSlideshow = false
                        } label: {
                            Image(systemName: "squareshape.split.3x3")
                                .font(Font.system(.title))
                                .foregroundColor(.white)
                        }
                        
                        Button {
                            self.showSlideshow = true
                        } label: {
                            Image(systemName: "person.crop.square")
                                .font(Font.system(.title))
                                .foregroundColor(.white)
                        }
                    }
                    .padding(.vertical, 5)
                    
                    if showSlideshow {
                        FriendCarousel(friends: modelData.friends)
                    } else {
                       FriendGrid(friends: modelData.friends)
                    }
                    
                    FriendshipTips()
                }
            }
        }.accentColor(lightBlue)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView().environmentObject(ModelData())
    }
}
