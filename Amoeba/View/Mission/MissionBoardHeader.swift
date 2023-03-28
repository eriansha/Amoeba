//
//  MissionBoardHeader.swift
//  Amoeba
//
//  Created by Ivan on 23/03/23.
//

import SwiftUI

struct MissionBoardHeader: View {
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient:
                            Gradient(colors: [Color("LightBlue"), Color("MediumBlue")]), startPoint: .topLeading, endPoint: .bottomLeading)
            .roundedCorner(40, corners: [.bottomLeft, .bottomRight])
            
            VStack {
                LottieView(url: "friendship")
                    .frame(
                        width: isAnimating ? 160 : 0,
                        height: isAnimating ? 160 : 0
                    )
                
                Text(isAnimating ? "Friendship Progress" : "")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
            }
            .animation(.easeIn(duration: 0.5), value: isAnimating)
            .onAppear {
                self.isAnimating = true
            }
            .padding()
        }.ignoresSafeArea(.all)
        
    }
}

struct MissionBoardHeader_Previews: PreviewProvider {
    static var previews: some View {
        MissionBoardHeader()
    }
}
