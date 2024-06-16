
# ToDo List

This is a Reminder swiftUI app

## Screenshots

<img src="https://github.com/SalmaHKamal/SwiftUI-TodoList/assets/29051319/15b5d2b5-1520-41b4-9f25-cdaa7287c23e" width="200"> 
<img src="https://github.com/SalmaHKamal/SwiftUI-TodoList/assets/29051319/738b8725-52d0-4608-b97a-c13abe821c07" width="200"> 
<img src="https://github.com/SalmaHKamal/SwiftUI-TodoList/assets/29051319/2392469d-3931-49ea-a961-afa95086e0b5" width="200"> 

## Acheivments
- Add Firebase using SwiftPackages
- Firebase firestore property wrappers to query data from it.
## Lessons Learned

* The difference between Mac Catalyst and MacOS is: Mac Catalyst supports iOS & iPadOS SDK. which makes it eaiser to support Mac application without need to write a specific code using AppKit that MacOS uses.
      
## Detected Issues + Solution

| Issue             | Solution                                                                |
| ----------------- | ------------------------------------------------------------------ |
|If MacOS generated an issue while adding firebase via pod file, that is related to sandbox| Go to build settings of the project, below build option, turn off “user script sandbox” |
|firebase logging error <img width="400" alt="Screenshot 2024-06-16 at 10 52 39 AM" src="https://github.com/SalmaHKamal/SwiftUI-TodoList/assets/29051319/cea404ae-1e11-47d8-b41a-5b36113e43d6">| 1] enable *keychain sharing* capability<br> 2] press + button to add the current target by default|







