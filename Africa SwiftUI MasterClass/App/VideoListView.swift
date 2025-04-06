//
//  VideoListView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI

struct VideoListView: View {
    
    // MARK: - Properties
    @State var videos : [Video] = Bundle.main.decode("videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                } // Loop
            } //: List
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Videos").navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    } //: Button
                } //: ToolbarItem
            } //: Toolbar
            .refreshable {
                videos.shuffle()
                hapticImpact.impactOccurred()
            }
        } //: Navigation
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    VideoListView()
}
