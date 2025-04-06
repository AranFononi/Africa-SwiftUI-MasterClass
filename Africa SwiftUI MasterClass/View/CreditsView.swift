//
//  CreditsView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 6/4/25.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
                Copyright © Aran Fononi
                All rights reserved
                Better Apps ♥️ Less Code
                """)
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
        
    }
}

#Preview {
    CreditsView()
}
