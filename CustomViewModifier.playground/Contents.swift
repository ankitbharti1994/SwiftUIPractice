import SwiftUI
import PlaygroundSupport

struct Container: View {
    var body: some View {
        Text("Hello World")
            .modifier(CustomModifier())
    }
}

struct CustomModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content.font(.largeTitle)
            .foregroundColor(.blue)
    }
}
