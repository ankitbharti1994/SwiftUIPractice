//
//  ContentView.swift
//  Text
//
//  Created by ankit bharti on 17/08/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    private static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }()
    
    var body: some View {
        Text("Today's date: \(Date(), formatter: ContentView.dateFormatter)")
        .lineLimit(nil)
        .foregroundColor(.black)
        .font(.headline)
        .lineSpacing(20)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
