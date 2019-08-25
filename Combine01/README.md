**Model**
```swift
struct User: Codable, Identifiable {
    let id = UUID()
    let name: String
}
```

**DataSource**
```swift
import Combine

class DataSource: ObservableObject {
    @Published var users = [User]()
    @Published var isCancelled = true
    private var queue = DispatchQueue(label: "com.swiftUI.datasource")
    private var dataQueryTimer: DispatchSourceTimer?
    
    func fetch() {
        let timer = DispatchSource.makeTimerSource(flags: .strict, queue: queue)
        self.dataQueryTimer = timer
        timer.schedule(deadline: .now() + 1.0, repeating: 1.0)
        timer.setEventHandler {
            let name = "User \(Int.random(in: 1...100))"
            let user = User(name: name)
            DispatchQueue.main.async {
                self.users.append(user)
            }
        }
        
        self.isCancelled = false
        timer.resume()
    }
    
    func cancel() {
        self.dataQueryTimer?.cancel()
        self.dataQueryTimer = nil
        self.isCancelled = true
    }
}
```

**DetailView**
```swift
import SwiftUI

struct DetailView: View {
    let user: User
    var body: some View {
        Text(user.name)
    }
}
```

**ContentView**
```swift
import SwiftUI

struct ContentView: View {
    @ObservedObject var dataSource = DataSource()
    
    var body: some View {
        NavigationView {
            List(dataSource.users) { user in
                NavigationLink(destination: DetailView(user: user)) {
                    Text(user.name)
                }
            }
            .padding()
            .navigationBarItems(trailing:
                Group {
                    if dataSource.isCancelled {
                        Button(action: {
                            self.dataSource.fetch()
                        }, label: {
                            Image(systemName: "play")
                        })
                    } else {
                        Button(action: {
                            self.dataSource.cancel()
                        }) {
                            Image(systemName: "pause")
                        }
                    }
                }
                .font(.largeTitle)
            )
            .navigationBarTitle("Users")
        }
    }
}
```

**Screenshots**

![Start](https://github.com/ankitbharti1994/SwiftUIPractice/blob/master/Combine01/Screenshots/start.png)
![Stop](https://github.com/ankitbharti1994/SwiftUIPractice/blob/master/Combine01/Screenshots/stop.png)
