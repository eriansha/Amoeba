//
//  MissionTask.swift
//  Amoeba
//
//  Created by Ivan on 23/03/23.
//

import SwiftUI

struct MissionTask: View {
    @Binding var toggle: Bool
    var mission: Mission
    
    var body: some View {
        Toggle(isOn: $toggle) {
            Text(mission.task)
        }.toggleStyle(iOSCheckboxToggleStyle())
    }
}

struct MissionTask_Previews: PreviewProvider {
    static let missions = ModelData().missions
    static let toggle: Bool = false
    
    static var previews: some View {
        MissionTask(
            toggle: $toggle,
            mission: missions[0]
        )
    }
}
