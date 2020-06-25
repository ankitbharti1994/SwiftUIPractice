//
//  Dashboard.swift
//  SwiftUI2.0
//
//  Created by ankit bharti on 24/06/20.
//

import SwiftUI

struct Dashboard: View {
    var body: some View {
        TabView {
            GridVStack()
                .tabItem { Label("Grid", systemImage: "square.grid.3x2") }
            OutlineViewExample()
                .tabItem { Label("User", systemImage: "shield") }
            DisclosureView()
                .tabItem { Label("Disclosure", systemImage: "hexagon") }
            ColorPickerView()
                .tabItem { Label("Picker", systemImage: "eyedropper.halffull") }
            MapView()
                .tabItem { Label("Map", systemImage: "map") }
            ActivityIndicatorView()
                .tabItem { Label("Activity", systemImage: "tray") }
            MultilineText()
                .tabItem { Label("Text", systemImage: "pencil") }
            ScrollReaderView()
                .tabItem { Label("Reader", systemImage: "envelope.open") }
        }
//        .tabViewStyle(PageTabViewStyle())
//        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct Dashboard_Previews: PreviewProvider {
    static var previews: some View {
        Dashboard()
    }
}
