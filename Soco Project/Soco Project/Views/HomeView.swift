//
//  HomeView.swift
//  Soco Project
//
//  Created by apple on 3/27/21.
//

import SwiftUI

struct HomeView: View {
  
  let UpcomingText = ["MURAL GRAND OPENING", "APRIL 10, 2021", "MITOTE FOOD PARK"]
  let PastText = ["TAKE A", "LOOK AT", "PAST PROJECTS"]
  let speech = ["VIEW MORE", "SPEECHES"]
  
  var body: some View {
    ScrollView{
      Spacer()
      VStack{
        HStack{
          Text("Upcoming Events")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: 150, alignment: .topLeading)
          Spacer()
        }
        ZStack{
          Image("Upcoming")
            .resizable()
            .scaledToFit()
            .border(Color.black, width: 0.5)
          VStack{
            
            ForEach(0..<3) { num in
              ZStack{
                RoundedRectangle(cornerRadius: 10)
                  .foregroundColor(.black)
                  .opacity(0.4)
                Text(UpcomingText[num])
                  .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                  .font(.title)
                  .foregroundColor(.white)
              }
            }
            .frame(minWidth: 100, idealWidth: 200, maxWidth: 350, minHeight: 10, idealHeight: 30, maxHeight: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Text("VIEW")
                .padding()
                .foregroundColor(.black)
                .background(Color.orange)
                .cornerRadius(20)
            })
          }
        }
        Spacer()
        Text("In today’s volatile political climate, the basic rights of immigrants are being violated.  We aim to humanize and support the immigrants in our community by telling their stories through art and raising awareness about the injustices they face.")
          .fontWeight(.semibold)
          .padding()
          .multilineTextAlignment(.center)
        HStack{
          Text("Past Projects")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .frame(maxWidth: 150, alignment: .topLeading)
          Spacer()
        }
        ZStack{
          Image("DreamingPainter")
            .resizable()
            .scaledToFit()
            .border(Color.black, width: 0.5)
          VStack{
            
            ForEach(0..<3) { num in
              ZStack{
                RoundedRectangle(cornerRadius: 10)
                  .foregroundColor(.black)
                  .opacity(0.4)
                Text(PastText[num])
                  .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                  .font(.title)
                  .foregroundColor(.white)
              }
            }
            .frame(minWidth: 100, idealWidth: 200, maxWidth: 350, minHeight: 10, idealHeight: 30, maxHeight: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Text("VIEW")
                .padding()
                .foregroundColor(.black)
                .background(Color.orange)
                .cornerRadius(20)
            })
          }
        }
        
        HStack{
          Text("Speeches from local activists!")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .font(.system(size: 18.0))
            .frame(maxWidth: 600, alignment: .topLeading)
          Spacer()
        }
        
        Text("Learn about immigration issues in Sonoma County from recorded speakers who represent and fight for local immigrant workers and Dreamers. Speakers include: Alicia Sanchez, Rafael Vasquez, Bernice Espinoza")
          .fontWeight(.semibold)
          .padding()
          .multilineTextAlignment(.center)
        
        ZStack{
          Image("speeches")
            .resizable()
            .scaledToFit()
            .border(Color.black, width: 0.5)
          VStack{
            
            ForEach(0..<2) { num in
              ZStack{
                RoundedRectangle(cornerRadius: 10)
                  .foregroundColor(.black)
                  .opacity(0.4)
                Text(speech[num])
                  .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                  .font(.title)
                  .foregroundColor(.white)
              }
            }
            .frame(minWidth: 100, idealWidth: 200, maxWidth: 350, minHeight: 10, idealHeight: 30, maxHeight: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Text("VIEW")
                .padding()
                .foregroundColor(.black)
                .background(Color.orange)
                .cornerRadius(20)
            })
          }
        }
        Text("© The Monarch Project 2021")
          .fontWeight(.semibold)
          .padding()
          .multilineTextAlignment(.center)
      }
    }
  }
}
