//
//  GalleryView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - Properties
    
    @State private var selectedAnimal: String = "lion"
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    // let gridLayout: [GridItem] = [
    //     GridItem(.flexible()),
    //     GridItem(.flexible()),
    //     GridItem(.flexible())
    // ]
    
    //let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 3)
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Double = 3.0
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .center, spacing: 30) {
                // MARK: - Image
                Image(selectedAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
                // MARK: - Slider
                
                Slider(value: $gridColumn, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumn) { oldValue, newValue in
                        gridSwitch()
                    }
                
                
                // MARK: - Grid
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { item in
                        Image(item.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 1))
                            .onTapGesture {
                                selectedAnimal = item.image
                            }
                    } //: Loop
                } //: Grid
                .onAppear {
                    gridSwitch()
                }
            } //: VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        } //: Scroll
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(MotionAnimationView().ignoresSafeArea())
    }
}

#Preview {
    GalleryView()
}
