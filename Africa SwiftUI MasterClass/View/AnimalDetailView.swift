//
//  AnimalDetailView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - Properties
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment:.center, spacing: 20) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                
                // Hero Image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundStyle(.primary)
                    .background(
                        Color.accent
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                
                // Gallery
                
                // Facts
                
                // Description
                
                // Map
                
                // Link
                
            } //: VStack
            .navigationTitle("Learn About \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        } //: Scroll
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    NavigationView {
        AnimalDetailView(animal: animals[2])
    }
}
