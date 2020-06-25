//
//  MapView.swift
//  SwiftUI2.0
//
//  Created by ankit bharti on 25/06/20.
//

import SwiftUI
import MapKit

struct Item: Identifiable {
    let id = UUID()
    let imageName: String
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 17.506140, longitude: 78.319572), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var items = [Item(imageName: "mappin")]
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: items) { item in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: 17.506140, longitude: 78.319572)) {
                Image(systemName: item.imageName)
                    .foregroundColor(.red)
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
