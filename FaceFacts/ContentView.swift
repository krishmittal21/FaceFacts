//
//  ContentView.swift
//  FaceFacts
//
//  Created by Krish Mittal on 10/05/24.
//

import SwiftData
import SwiftUI

struct ContentView: View {
    @Query var people: [Person]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(people) { person in
                    NavigationLink(value: person) {
                        Text(person.name)
                    }
                }
            }
            .navigationTitle("FaceFacts")
            .navigationDestination(for: Person.self) { person in
                Text(person.name)
            }
        }
    }
}

#Preview {
    ContentView()
}
