//
//  SplashView.swift
//  Amoeba
//
//  Created by Ivan on 15/03/23.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient:
                            Gradient(colors: [Color("LightBlue"), Color("MediumBlue")]), startPoint: .topLeading, endPoint: .bottomLeading)
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                LottieView(url: "splashScreen.json")
                    .frame(width: 400, height: 400)
                
                FriendshipTips()
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
