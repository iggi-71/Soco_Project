//
//  ContentView.swift
//  Soco Project
//
//  Created by apple on 3/27/21.
//

import SwiftUI

struct ContentView: View {
  
  @State var selectedIndex = 1
  @State var shouldShowModal = false
  
  
  let tabBarImagesNames = ["house.fill", "plus.app.fill", "map"]
  
  var body: some View {
    VStack{
      Text("The Monarch Project")
        .font(Font.custom("Kollektif-Bold", size: 18.0))
      ZStack{
        switch selectedIndex {
        
        case 0:
          Color("LightOrangeYellow")
          HomeView()
        case 1:
          Color("LightOrangeYellow")
          FeedView()
            .fullScreenCover(isPresented: $shouldShowModal, content: {
              CameraView()
              
            })
        case 2:
            mapView()
          
        default:
          Text("remaining")
        }
        
      }
      
      HStack{
        ForEach(0..<3) { num in
          Button(action: {
            selectedIndex = num
          }, label: {
            Spacer()
            
            if num == 1 {
              Image(systemName: tabBarImagesNames[num])
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(.red)
                .padding(.bottom, 10)
            } else{
              Image(systemName: tabBarImagesNames[num])
                .font(.system(size: 25, weight: .bold))
                .foregroundColor(selectedIndex == num ?  Color(.black) : .init(white: 0.8))
            }
            
            
            Spacer()
          })
          
          
        }
      }
      .padding(.leading, 20)
      .padding(.trailing, 20)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .preferredColorScheme(.light)
      
      
  }
}
