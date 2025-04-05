//
//  CoverImageView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - Properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: Loop
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
       
    }
}

#Preview {
    CoverImageView()
}
