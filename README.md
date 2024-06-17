
# Project Title

A brief description of what this project does and who it's for


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
* To enable iCloud syncing, you've to be signed in with a paid apple account.
    * useful links:
        *    https://www.hackingwithswift.com/quick-start/swiftdata/how-to-sync-swiftdata-with-icloud
        * https://icloud.developer.apple.com/dashboard/home/teams/2VH28277N9 
         
      
## Detected Issues + Solution

| Issue             | Solution                                                                |
| ----------------- | ------------------------------------------------------------------ |
|If MacOS generated an issue while adding firebase via pod file, that is related to sandbox| Go to build settings of the project, below build option, turn off “user script sandbox” |
|firebase logging error <img width="500" alt="Screenshot 2024-06-16 at 10 52 39 AM" src="https://github.com/SalmaHKamal/SwiftUI-TodoList/assets/29051319/cea404ae-1e11-47d8-b41a-5b36113e43d6">| 1] enable *keychain sharing* capability<br> 2] press + button to add the current target by default|
|Although you logged in, you have no permission to fetch data <img width="500" alt="Screenshot 2024-06-16 at 11 05 21 AM" src="https://github.com/SalmaHKamal/SwiftUI-TodoList/assets/29051319/c76ebf9e-694a-4319-9d42-d0ede8658e73">| Update rules to enable read & write data<br> <img width="1000" alt="Screenshot 2024-06-16 at 11 07 05 AM" src="https://github.com/SalmaHKamal/SwiftUI-TodoList/assets/29051319/8f4bdc85-d5de-4312-a130-2e6ea95d25c1">|
|While log in, The supplied auth credential is incorrect, malformed or has expired| Uncheck *Email Enumuration Protection* <img width="1067" alt="Screenshot 2024-06-16 at 11 12 07 AM" src="https://github.com/SalmaHKamal/SwiftUI-TodoList/assets/29051319/4a9871e2-a6a2-43e1-89e6-ebeee3e4116f">|











