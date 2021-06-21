//
//  Map.swift
//  Soco Project
//
//  Created by apple on 4/17/21.
//

import SwiftUI
import MapKit

struct mapView: View {
  
  @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 38.339328, longitude: -122.683848), span: MKCoordinateSpan(latitudeDelta: 0.25, longitudeDelta: 0.25))
  
//  38.413640, -122.738848
  
  var body: some View{
    Map(coordinateRegion: $region)
    
  }
}
  
 
