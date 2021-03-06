# SwiftUIPractice
Practice for SwiftUI

**Code**

```swift
struct PlayerRow: View {
    let country: String
    let players: [Player]
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
               Text(country)
                .font(.largeTitle)
                
                Spacer()
                
                Button(action: {
                    print("video button clicked for \(self.country)")
                }) {
                    Image(systemName: "video")
                        .font(.largeTitle)
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0.0) {
                    ForEach(self.players) {
                        PlayerView(person: $0)
                    }
                }
            }
        }
    }
}
```

**Screenshots**

![Dark Mode](https://github.com/ankitbharti1994/SwiftUIPractice/blob/master/Dashboard_SwiftUI/Screenshots/screenshot%20dark.png)
![Light Mode](https://github.com/ankitbharti1994/SwiftUIPractice/blob/master/Dashboard_SwiftUI/Screenshots/screenshot%20light.png)
