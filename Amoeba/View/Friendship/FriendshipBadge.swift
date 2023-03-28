//
//  FriendshipBadge.swift
//  Amoeba
//
//  Created by Ivan on 21/03/23.
//

import SwiftUI

struct FriendshipBadge: View {
    @State var isAnimating = false
    var symbol: FriendshipSymbol
    var hideCircle: Bool = false
    
    var body: some View {
        ZStack {
            if !hideCircle {
                Circle()
                    .fill(Color("LightBlue"))
                    .frame(width: 60, height: 60)
            }
            
            Text(symbol.rawValue)
                .font(.largeTitle)
                .rotationEffect(.degrees(isAnimating ? 0 : -90))
                .onAppear {
                    self.isAnimating = true
                }
                .animation(.linear(duration: 0.5), value: isAnimating)
                
        }
    }
}

struct FriendshipBadge_Previews: PreviewProvider {
    static var previews: some View {
        let symbol = FriendshipSymbol.level1
        
        FriendshipBadge(
            symbol: symbol,
            hideCircle: false
        )
    }
}
