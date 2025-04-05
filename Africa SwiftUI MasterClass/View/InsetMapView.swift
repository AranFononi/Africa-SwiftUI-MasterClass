//
//  InsetMapView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    // MARK: - Properties
    
    @State private var region = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0)))
    
    var body: some View {
        Map(position: $region)
            .overlay(alignment: .topTrailing, content: {
                NavigationLink(destination: MapView()) {
                    HStack {
                      Image(systemName: "mappin.circle")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                        
                        Text("Locations")
                            .foregroundStyle(.accent)
                            .fontWeight(.bold)
                            
                    } //: HStack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .opacity(0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    )
                } //: Navigation
                .padding(12)
            })
            .frame(height: 256)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    InsetMapView()
}
