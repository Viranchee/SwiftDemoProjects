//
//  AppDelegate.swift
//  PushNotificationsDemo
//
//  Created by Viranchee L on 22/02/20.
//  Copyright © 2020 Viranchee L. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder {
  
}

extension AppDelegate: UIApplicationDelegate {
    
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
 
    registerForPushNotifications()
    return true
  }
  
  // MARK: UISceneSession Lifecycle
  
  func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
   return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
  }
  
  func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
    let token = deviceToken.reduce("") { $0 + String(format: "%02x", $1) }
    assert(deviceToken == token.data(using: .utf8))
  }
  func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
    
  }
}

extension AppDelegate {
  private func registerForPushNotifications() {
    let center = UNUserNotificationCenter.current()
     center.requestAuthorization(options: [.alert, .badge, .sound, .sound, .provisional]) { (granted, error) in
      center.getNotificationSettings { (settings) in
        guard settings.authorizationStatus == .authorized else { return }
        DispatchQueue.main.async {
          /// Need to call this on Main thread
          UIApplication.shared.registerForRemoteNotifications()
          
        }
        
      }
     }
  }
}
