This is a simple SwiftUI ToDo List project.

What did I learn ?
1] Add Firebase using SwiftPackages.
2] Firebase firestore property wrappers to query data from it.
![Simulator Screenshot - iPhone 15 Pro - 2024-03-24 at 20 19 44](https://github.com/SalmaHKamal/SwiftUI-TodoList/assets/29051319/15b5d2b5-1520-41b4-9f25-cdaa7287c23e)
![Simulator Screenshot - iPhone 15 Pro - 2024-03-24 at 20 19 52](https://github.com/SalmaHKamal/SwiftUI-TodoList/assets/29051319/738b8725-52d0-4608-b97a-c13abe821c07)
![Simulator Screenshot - iPhone 15 Pro - 2024-03-24 at 20 20 04](https://github.com/SalmaHKamal/SwiftUI-TodoList/assets/29051319/2392469d-3931-49ea-a961-afa95086e0b5)

** Learnt Lessons:
* Firebase is not working with MacOS target if added to the project via SPM
    * Because there is a file in FirebaseMessaging is using UIKit, and UIKit is not available on MacOS since it is using AppKit instead.
* If MacOS generated an issue while adding firebase via pod file, that is related to sandbox
    * Go to build settings of the project, below build option, turn off “user script sandbox”
