//
//  ImagePickerControllerView.swift
//  ImagePicker-SwiftUI
//
//  Created by ankit bharti on 26/10/19.
//  Copyright © 2019 ankit kumar bharti. All rights reserved.
//

import SwiftUI

struct ImagePickerControllerView: UIViewControllerRepresentable {
    
    @Binding var isVisible: Bool
    @Binding var image: Image?
    var source: UIImagePickerController.SourceType
    
    func makeCoordinator() -> ImagePickerControllerView.Coordinator {
        return Coordinator(isVisible: $isVisible, image: $image)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let controller = UIImagePickerController()
        controller.allowsEditing = true
        controller.sourceType = source
        controller.delegate = context.coordinator
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePickerControllerView>) {
        
    }
    
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
        @Binding var isVisible: Bool
        @Binding var image: Image?
        
        init(isVisible: Binding<Bool>, image: Binding<Image?>) {
            _isVisible = isVisible
            _image = image
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            isVisible = false
            picker.dismiss(animated: true, completion: nil)
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            isVisible = false
            guard let originalImage = info[.originalImage] as? UIImage else { return }
            self.image = Image(uiImage: originalImage)
        }
    }
}
