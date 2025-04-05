//
//  AnimalListItemView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: - Properties
    let animal : Animal
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.accent)
                
                Text(animal.headline)
                    .font(.caption)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }//: VStack
        }//: HStack
        
        
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    AnimalListItemView(animal: animals[1])
}
