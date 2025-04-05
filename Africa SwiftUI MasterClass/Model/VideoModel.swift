//
//  VideoModel.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id : String
    let name : String
    let headline : String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
