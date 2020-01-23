//
//  ContentView.swift
//  ShoppingCart
//
//  Created by ankit bharti on 09/01/20.
//  Copyright © 2020 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct DraggableView: View {
    let name: String
    @Binding var imageCart: [String]
    @State var isClicked = false
    let height: CGFloat
    
    var body: some View {
        ZStack {
            Image(name)
                .resizable()
                .modifier(RoundedImage())
                .offset(x: 0, y: self.isClicked ? height - 60.0 : 0)
                .onTapGesture {
                    withAnimation {
                        self.imageCart.append(self.name)
                    }
                }            
        }
    }
}

struct ContentView: View {
    private let icons = ["airplane", "headphones", "idea", "shopping_cart", "timer"]
    @State private var imageCart: [String] = []
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                HStack(spacing: 10.0) {
                    ForEach(self.icons, id: \.self) { name in
                        DraggableView(name: name, imageCart: self.$imageCart, height: proxy.frame(in: .global).height)
                    }
                }
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color.gray)
                    .overlay(Text("\(self.imageCart.count)").font(.largeTitle))
                    .frame(width: 100.0, height: 100.0)
                    .background(
                        GeometryReader { proxy in
                            ZStack {
                                ForEach(self.imageCart, id: \.self) { itemName in
                                    Image(itemName)
                                        .resizable()
                                        .frame(width: 60.0, height: 60.0)
                                        .animation(.default)
                                        .transition(.offset(x: 0, y: -700))
                                }
                            }
                        }
                    )
                
            }
            .padding()
        }
    }
}

struct RoundedImage: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 60, height: 60)
            .background(Color.red)
            .accentColor(.white)
            .cornerRadius(10.0)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
