//
//  ContentView.swift
//  standbytime
//
//  Created by Semih Kesgin on 21.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    let allColors = [Color.black, Color.green.opacity(0.5), Color.yellow, Color.cyan, Color.init(.darkGray), Color.init(.systemGray2)]
    
    @State var color = Color.yellow
    
var body: some View {
    ZStack {
        ColorBackGround(color: $color)
        VStack {
            Text(Date(), style: .time)
                .foregroundColor(Color.white)
                .font(.system(size: 200))
            .bold()
            .padding()
            
            Button(action: {
                color = allColors[Int.random(in: 0...5)]
             }) {
                 Image(systemName: "lightbulb.circle.fill")
                     .imageScale(.large)
             }
             .foregroundColor(.secondary)
             .buttonStyle(.borderedProminent)
                     .buttonBorderShape(.capsule)
                     .opacity(0.5)
                  
                     
        }
        .ignoresSafeArea()
    }
}
}


struct ColorBackGround: View {
@Binding var color: Color
var body: some View {
    Rectangle()
        .fill(color)
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


/*  ZStack {
Color.yellow
    .ignoresSafeArea()
Text(Date(), style: .time)
    .foregroundColor(Color.white)
    .font(.system(size: 140))
.bold()
 } /**/*/
