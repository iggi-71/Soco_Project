//
//  HomeView.swift
//  Soco Project
//
//  Created by apple on 3/27/21.
//

import SwiftUI

struct HomeView: View {
  
  let UpcomingText = ["MURAL GRAND OPENING", "APRIL 10, 2021", "MITOTE FOOD PARK"]
  let PastText = ["TAKE A LOOK AT", "PAST PROJECTS"]
  let mission = ["JOIN OUR MISSION", "TOGETHER"]
  
  var body: some View {
    ScrollView{
      Spacer()
      VStack{
        
        
        ZStack{
          Image("TallMural")
            .resizable()
            .scaledToFit()
          VStack{
            HStack{
              ZStack{
                RoundedRectangle(cornerRadius: 5)
                  .foregroundColor(Color("DeepOrange"))
                  .frame(minWidth: 100, idealWidth: 200, maxWidth: 300, minHeight: 10, idealHeight: 30, maxHeight: 30)

              Text("Upcoming Events")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(Font.custom("Kollektif-Bold", size: 30.0))
                .padding()
                .foregroundColor(.white)
              }
              Spacer()
            }
            Spacer()
            ForEach(0..<3) { num in
              Text(UpcomingText[num])
                .font(Font.custom("Kollektif", size: 30.0))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .lineLimit(1)
            }
            .padding(1)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Text("VIEW")
                .padding()
                .foregroundColor(.white)
                .font(Font.custom("Kollektif", size: 15.0))
                .background(Color("DeepOrange"))
            })
            Spacer()
          }
        }
        
        Spacer()
        Text("In today’s volatile political climate, the basic rights of immigrants are being violated.  We aim to humanize and support the immigrants in our community by telling their stories through art and raising awareness about the injustices they face.")
          .font(Font.custom("Kollektif", size: 22.0))
          .padding()
          .multilineTextAlignment(.center)
        
        ZStack{
          Image("PastProjects")
            .resizable()
            .scaledToFit()
          VStack{
            HStack{
              ZStack{
                RoundedRectangle(cornerRadius: 5)
                  .foregroundColor(Color("Cerulean"))
                  .frame(minWidth: 100, idealWidth: 200, maxWidth: 300, minHeight: 10, idealHeight: 30, maxHeight: 30)

              Text("Past Projects")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(Font.custom("Kollektif", size: 30.0))
                .padding()
                .foregroundColor(.white)
              }
              Spacer()
            }
            Spacer()
            ForEach(0..<2) { num in
              Text(PastText[num])
                .font(Font.custom("Kollektif", size: 30.0))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .lineLimit(1)
            }
            .padding(1)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Text("VIEW")
                .padding()
                .foregroundColor(.white)
                .font(Font.custom("Kollektif", size: 15.0))
                .background(Color("Cerulean"))
            })
            Spacer()
          }
        }
        
        Text("Take a look at our past projects, blah blah blah placeholder write something down so it looks better, i think this is good")
          .font(Font.custom("Kollektif", size: 22.0))
          .padding()
          .multilineTextAlignment(.center)
        
        //this is the images ------------
        
        ZStack{
          Image("Mission")
            .resizable()
            .scaledToFit()
          VStack{
            HStack{
              ZStack{
                RoundedRectangle(cornerRadius: 5)
                  .foregroundColor(Color("YellowOchre"))
                  .frame(minWidth: 100, idealWidth: 200, maxWidth: 300, minHeight: 10, idealHeight: 30, maxHeight: 30)

              Text("Our Mission")
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .font(Font.custom("Kollektif", size: 30.0))
                .padding()
                .foregroundColor(.white)
              }
              Spacer()
            }
            Spacer()
            ForEach(0..<2) { num in
              Text(mission[num])
                .font(Font.custom("Kollektif", size: 30.0))
                .fontWeight(.heavy)
                .foregroundColor(.white)
                .lineLimit(1)
            }
            .padding(1)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Text("VIEW")
                .padding()
                .foregroundColor(.white)
                .font(Font.custom("Kollektif", size: 15.0))
                .background(Color("YellowOchre"))
            })
            Spacer()
          }
        }
        
        //-------------
        
        Text("© The Monarch Project 2021")
          .font(Font.custom("Kollektif", size: 10.0))
          .padding(22)
      }
    }
  }
}
