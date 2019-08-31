# SwiftUIPractice
Practice for SwiftUI

**Code**

```swift
struct PlayerRow: View {
    let country: String
    let players: [Player]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(country)
                .font(.largeTitle)
            
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

![Dark Mode](https://github.com/ankitbharti1994/SwiftUIPractice/blob/master/Screenshots/dark.png)
![Light Mode](https://github.com/ankitbharti1994/SwiftUIPractice/blob/master/Screenshots/light.png)
