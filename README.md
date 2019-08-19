# SwiftUIPractice
Practice for SwiftUI

**Code**

```swift
NavigationView {
            List {
                Section(header: Text("Close Friends").font(.headline)) {
                    ForEach(friends) {
                        FriendView(friend: $0)
                    }
                    .onMove(perform: self.move(from:to:))
                    .onDelete(perform: self.delete(_:))
                }
            }
            .listStyle(GroupedListStyle())
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle("Friends")
        }
```

**Screenshots**

![ListView](https://github.com/ankitbharti1994/SwiftUIPractice/blob/master/Screenshots/list%20view.png)
