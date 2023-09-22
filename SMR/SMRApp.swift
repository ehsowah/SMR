//
//  SMRApp.swift
//  SMR
//
//  Created by ehsowah on 9/20/23.
//

import SwiftUI
import OneSignalFramework

@main
struct SMRApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        // Remove this method to stop OneSignal Debugging
      OneSignal.Debug.setLogLevel(.LL_VERBOSE)
       
      // OneSignal initialization
      OneSignal.initialize("7d4304fb-d434-40df-a52d-c00590b112e0", withLaunchOptions: launchOptions)

      // requestPermission will show the native iOS notification permission prompt.
      // We recommend removing the following code and instead using an In-App Message to prompt for notification permission
      OneSignal.Notifications.requestPermission({ accepted in
        print("User accepted notifications: \(accepted)")
      }, fallbackToSettings: true)

      // Login your customer with externalId
      // OneSignal.login("EXTERNAL_ID")
           
      
        return true
    }
}
