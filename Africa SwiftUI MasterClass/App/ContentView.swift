//
//  ContentView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // MARK: - Properties
        let animals: [Animal] = Bundle.main.decode("animals.json")
        
        // MARK: - Body
        NavigationView {
            List {
               CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                AnimalListItemView(animal: animal)
                }
            } //: List
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        } //: Navigation
    }
}

#Preview {
    ContentView()
}
