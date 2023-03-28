//
//  BackgroundBlob.swift
//  Amoeba
//
//  Created by Ivan on 20/03/23.
//

import SwiftUI

struct BackgroundBlob: View {
    var body: some View {
        VStack {
            Image("blob-1")
                .position(x: 20, y: 170)
            
            Image("blob-2")
                .position(x: 360, y: -10)
            
            Image("blob-3")
                .position(x: 70, y: 0)
            
            HStack {
                Image("blob-4")
                    .offset(x: -40, y: 30)
                
                Spacer()
                
                Image("blob-5")
                    .offset(x: 40, y: 30)
            }
            
            
        }.ignoresSafeArea(.all)
    }
}

struct BackgroundBlob_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundBlob()
            .background(Color.black)
    }
}
