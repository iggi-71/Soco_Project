//
//  ContentView.swift
//  Soco Project
//
//  Created by apple on 3/27/21.
//

import SwiftUI

struct ContentView: View {
  
  @State var selectedIndex = 2
  
  let tabBarImagesNames = ["info", "cart", "house.circle", "photo", "map"]
  
  var body: some View {
    VStack{
      Text("The Monarch Project")
        .font(.system(size: 18, weight: .bold))
      ZStack{
        switch selectedIndex {
        
        case 0:
          Color.blue
            Text("First") //can change to a different view
        case 1:
          Color.red
            Text("Second") //can change to a different view
        case 2:
          Color("LightOrangeYellow")
            HomeView()
        case 3:
          Color.purple
            Text("Fourth") //can change to a different view
        case 4:
          Color.orange
            Text("Fifth") //can change to a different view
          
        default:
          Text("remaining")
        }
        
      }
      Spacer()
      
      HStack{
        ForEach(0..<5) { num in
          Button(action: {
            selectedIndex = num
          }, label: {
            Spacer()
            
            if num == 2 {
              Image(systemName: tabBarImagesNames[num])
                .font(.system(size: 50, weight: .bold))
                .foregroundColor(.orange)
            } else{
              Image(systemName: tabBarImagesNames[num])
                .font(.system(size: 24, weight: .bold))
                .foregroundColor(selectedIndex == num ?  Color(.black) : .init(white: 0.8))
            }
            
            
            Spacer()
          })
          
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .preferredColorScheme(.light)
      
      
  }
}
