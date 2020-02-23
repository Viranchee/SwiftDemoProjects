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
        print("Button1 Clicked!")
      }
      Button("Default Button") {
        print("Button2 Clicked")
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
