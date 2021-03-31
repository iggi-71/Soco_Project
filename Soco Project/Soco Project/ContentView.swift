//
//  ContentView.swift
//  Soco Project
//
//  Created by apple on 3/27/21.
//

import SwiftUI

struct ContentView: View {
  
  @State var selectedIndex = 0
  
  let tabBarImagesNames = ["house", "cart", "plus.app.fill", "photo", "map"]
  
  var body: some View {
    VStack{
      Text("The Monarch Project")
        .font(Font.custom("Kollektif", size: 18.0))
      ZStack{
        switch selectedIndex {
        
        case 0:
          Color("LightOrangeYellow")
          HomeView()
        case 1:
          Color.red
            Text("Second") //can change to a different view
        case 2:
          Color("LightOrangeYellow")
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
                .foregroundColor(.red)
                .padding(.bottom, 10)
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
