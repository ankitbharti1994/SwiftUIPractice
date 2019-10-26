//
//  ContentView.swift
//  ImagePicker-SwiftUI
//
//  Created by ankit bharti on 26/10/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var shouldPresentImagePicker = false
    @State var isGalaryShown = false
    @State var isCameraShown = false
    @State var image: Image?
    
    var body: some View {
        VStack {
            image?
                .resizable()
            Button(action: {
                self.shouldPresentImagePicker.toggle()
            }) {
                Image(systemName: "camera")
                    .font(.largeTitle)
            }
            .actionSheet(isPresented: $shouldPresentImagePicker) { () -> ActionSheet in
                ActionSheet(title: Text("Pick Image"), message: Text("Select the mode of image from the below options."), buttons: [
                
                    ActionSheet.Button.default(Text("Camera"), action: {
                        self.isCameraShown.toggle()
                    }),
                    
                    ActionSheet.Button.default(Text("Photo Gallery"), action: {
                        self.isGalaryShown.toggle()
                    }),
                    
                    ActionSheet.Button.cancel()
                    
                ])
            }
            
            if isGalaryShown {
                ImagePickerControllerView(isVisible: $isGalaryShown, image: $image, source: .photoLibrary)
            }
            
            if isCameraShown {
                ImagePickerControllerView(isVisible: $isCameraShown, image: $image, source: .camera)
            }
        }
        .padding(20)
        .onAppear { self.image = Image(systemName: "star.fill") }
        .navigationBarTitle("Image Picker")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
