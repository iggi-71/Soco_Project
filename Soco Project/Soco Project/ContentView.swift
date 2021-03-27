//
//  ContentView.swift
//  Soco Project
//
//  Created by apple on 3/27/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView{
      Text("Home")
        .tabItem {
          Image(systemName: "house.fill")
          Text("Home")
        }
      
      Text("Home")
        .tabItem {
          Image(systemName: "map.fill")
          Text("Map")
        }
      
      Text("Home")
        .tabItem {
          Image(systemName: "note.text")
          Text("Task")
        }
    }
    .edgesIgnoringSafeArea(.all)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
