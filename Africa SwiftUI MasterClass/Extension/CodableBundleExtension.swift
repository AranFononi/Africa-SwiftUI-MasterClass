//
//  CodableBundleExtension.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to Locate \(file) in Bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to Read \(file) in Bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode \(file) in Bundle")
        }
        
        return loaded
    }
}
