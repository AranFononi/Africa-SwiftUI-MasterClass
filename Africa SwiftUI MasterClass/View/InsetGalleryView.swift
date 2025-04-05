//
//  InsetGalleryView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - Properties
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 12))
                } //: Loop
            } //: HStack
        } //: Scroll
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    InsetGalleryView(animal: animals[4])
}
