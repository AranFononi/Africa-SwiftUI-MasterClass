//
//  AnimalGridItemView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 6/4/25.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: Animal
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .clipShape(.rect(cornerRadius: 12))
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    AnimalGridItemView(animal: animals[3])
        .padding()
}
