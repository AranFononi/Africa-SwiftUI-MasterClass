//
//  AnimalListItemView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI

struct AnimalListItemView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("lion")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text("Lion")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundStyle(.accent)
                
                Text("King of the Jungle, King of the Jungle. King of the Jungle, King of the Jungle, King of the Jungle, King of the Jungle")
                    .font(.caption)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            }//: VStack
        }//: HStack
        
        
    }
}

#Preview {
    AnimalListItemView()
}
