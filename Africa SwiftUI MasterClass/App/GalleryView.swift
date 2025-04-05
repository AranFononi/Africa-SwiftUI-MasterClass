//
//  GalleryView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI

struct GalleryView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            Text("Gallery")
        } //: Scroll
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(MotionAnimationView().ignoresSafeArea())
    }
}

#Preview {
    GalleryView()
}
