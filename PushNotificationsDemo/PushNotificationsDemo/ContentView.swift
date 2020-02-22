//
//  ContentView.swift
//  PushNotificationsDemo
//
//  Created by Viranchee L on 22/02/20.
//  Copyright © 2020 Viranchee L. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  var body: some View {
    VStack {
      Button("Grant Permission") {
        askNotificationPermission()
      }
      Button("Default Button") {
        print("Yo Bro")
      }
      Text("Hello, World!")
    }
    .padding()
  }
}

func askNotificationPermission() {
  let center = UNUserNotificationCenter.current()
  center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
    
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
