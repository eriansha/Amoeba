//
//  ControlButton.swift
//  Amoeba
//
//  Created by Ivan on 20/03/23.
//

import SwiftUI

struct ControlButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ControlButton_Previews: PreviewProvider {
    static var previews: some View {
        ControlButton()
    }
}
