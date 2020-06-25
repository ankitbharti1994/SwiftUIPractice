//
//  GridVStack.swift
//  SwiftUI2.0
//
//  Created by ankit bharti on 24/06/20.
//

import SwiftUI

struct GridVStack: View {
    
    var emojies = ["😀", "😃", "😄", "😁",
                   "😆", "😅", "😂", "🤣",
                   "☺️", "😊", "😇", "🙂"
    ]
    
    var columns: [GridItem] {
        [GridItem](repeating: GridItem(.adaptive(minimum: 80.0)), count: 4)
    }
    
    var body: some View {
        VStack {
            Spacer()
            LazyVGrid(columns: columns, spacing: 20.0, content: {
                ForEach(emojies, id: \.self) { name in
                    Text(name)
                }
                .font(.largeTitle)
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GridVStack()
    }
}
