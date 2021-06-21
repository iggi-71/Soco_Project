//
//  CameraView.swift
//  Soco Project
//
//  Created by apple on 4/2/21.
//

import SwiftUI

struct CameraView: View {
  
  @EnvironmentObject var userData: userData

  
  var body: some View {
    
    
    Button(action: {
//      shouldShowModal = false
    }, label: {
      Text("VIEW")
        .padding()
        .foregroundColor(.white)
        .font(Font.custom("Kollektif", size: 15.0))
        .background(Color("DeepOrange"))
    })


  }
}
