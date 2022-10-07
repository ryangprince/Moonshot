//
//  Mission.swift
//  Moonshot
//
//  Created by Ryan Prince on 10/4/22.
//

import Foundation

struct Mission: Codable, Identifiable {
    struct CrewRole: Codable {
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    
    var image: String {
        "apollo\(id)"
    }
    
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}

extension Mission {
    static var currentDate = Date()
    static let sampleData = Mission(id: 1, launchDate: currentDate, crew: [CrewRole(name: "White", role: "Driver")], description: "Moon Test")
}
