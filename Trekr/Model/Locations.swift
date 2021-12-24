//
//  Locations.swift
//  Trekr
//
//  Created by Giovanni Gaffé on 2021/12/24.
//

import Foundation

class Locations: ObservableObject {
    var places: [Location]
    
    var primary: Location {
        places[0]
    }
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
