//
//  ProgressBar.swift
//  Amoeba
//
//  Created by Ivan on 23/03/23.
//

import SwiftUI

struct ProgressBar: View {
    @State var isAnimating = false
    var value: Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .foregroundColor(darkGray.opacity(0.2))
                
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(
                        width: isAnimating ?
                            min(CGFloat(self.value) * geometry.size.width, geometry.size.width)
                            : 0,
                        height: geometry.size.height
                    )
                    .foregroundColor(lightBlue)
                    .animation(.linear(duration: 0.5), value: isAnimating)
                    .onAppear {
                        self.isAnimating = true
                    }
            }
            
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(value: 0.5)
    }
}
