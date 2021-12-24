//
//  Tip.swift
//  Trekr
//
//  Created by Giovanni Gaffé on 2021/12/24.
//

import Foundation

struct Tip: Decodable {
    var text: String
    var children: [Tip]?
}

extension Tip {
    static let example = Tip(text: "One tips", children: [Tip(text: "One children", children: [])])
}
