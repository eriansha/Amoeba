//
//  FriendshipTips.swift
//  Amoeba
//
//  Created by Ivan on 23/03/23.
//

import SwiftUI

let tips: [String] = [
    "The best greeting is always accompanied by a smile",
    "A firm handshake starts a stronger relationship.",
    "Look them in the eyes in a conversation to deepen your bond"
]

struct FriendshipTips: View {
    var textColor: Color
    @State private var tipsIndex: Int = 0
    
    init(textColor: Color = Color.white) {
        self.tipsIndex = Int.random(in: 0..<tips.count)
        self.textColor = textColor
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Text("TIPS #\(tipsIndex + 1)")
                .font(.caption)
                .padding(.bottom, 4)
            
            Text("\"\(tips[tipsIndex])\"")
                .font(.caption)
                .italic()
                .multilineTextAlignment(.center)
        }
        .foregroundColor(textColor)
        .padding(.horizontal, 8)
        .padding(.vertical, 16)
        .onAppear {
            self.tipsIndex = Int.random(in: 0..<tips.count)
        }
    }
}

struct FriendshipTips_Previews: PreviewProvider {
    static var previews: some View {
        FriendshipTips()
            .background(lightBlue)
    }
}
