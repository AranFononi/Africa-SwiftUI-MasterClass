//
//  InsetFactView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - Properties
    let animal : Animal
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                        .multilineTextAlignment(.center)
                } //: Loop
                

            } //: Tab
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168 , maxHeight: 190)
        } //: Box
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    InsetFactView(animal: animals[3])
        .padding()
}
