//
//  CenterModifier.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 6/4/25.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
