//
//  Mission.swift
//  Amoeba
//
//  Created by Ivan on 23/03/23.
//

import Foundation

struct Mission: Hashable, Codable, Identifiable {
    var id: Int
    var task: String
}
