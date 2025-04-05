//
//  MapView.swift
//  Africa SwiftUI MasterClass
//
//  Created by Aran Fononi on 5/4/25.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTIES
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    @State private var region: MapCameraPosition = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return MapCameraPosition.region(mapRegion)
    }()
    @State private var selection: String?
    @State private var latitude: String = "6.600286"
    @State private var longitude: String = "16.437759"
    
    // MARK: - BODY
    var body: some View {
        Map(position: $region, selection: $selection) {
            ForEach(locations) { location in
                Annotation(location.name, coordinate: location.location) {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32, alignment: .center)
                }
            }
        }
        .overlay(alignment: .top) {
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48, height: 48, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Latitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        
                        Text("\(latitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                    Divider()
                    HStack {
                        Text("Longitude:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        
                        Text("\(longitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 16)
            .background {
                Color.black
                    .clipShape(.rect(cornerRadius: 8))
                    .opacity(0.6)
                
            }
            .padding()
        }
        .onMapCameraChange(frequency: .continuous, { mapCameraUpdateContext in
            let latitudeRounded = String(format: "%.6f", Double(mapCameraUpdateContext.region.center.latitude))
            let longitudeRounded = String(format: "%.6f", Double(mapCameraUpdateContext.region.center.longitude))
            
            latitude = "\(latitudeRounded)"
            longitude = "\(longitudeRounded)"
        })
    }
}

#Preview {
    MapView()
}
