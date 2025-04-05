//
//  CoverImageView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - Properties
    
    var body: some View {
        TabView {
            ForEach(0 ..< 5) { item in
                Image("cover-lion")
                    .resizable()
                    .scaledToFit()
            } //: Loop
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
       
    }
}

#Preview {
    CoverImageView()
}
