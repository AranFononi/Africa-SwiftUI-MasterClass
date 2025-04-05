//
//  VideoPlayerHelper.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?
func playVideo(fileName:String, fileFormat: String) -> AVPlayer {
    if let AVVideo = Bundle.main.url(forResource: fileName, withExtension: fileFormat) {
        videoPlayer = AVPlayer(url: AVVideo)
        videoPlayer?.play()
    }
    return videoPlayer!
}
