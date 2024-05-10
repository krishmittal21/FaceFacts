//
//  FaceFactsApp.swift
//  FaceFacts
//
//  Created by Krish Mittal on 10/05/24.
//

import SwiftData
import SwiftUI

@main
struct FaceFactsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Person.self)
    }
}
