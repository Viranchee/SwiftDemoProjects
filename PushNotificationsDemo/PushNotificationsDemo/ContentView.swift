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
        print("YO!")
      }
      Button("Default Button") {
        print("Yo Bro")
      }
      Text("Hello, World!")
    }
    .padding()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
