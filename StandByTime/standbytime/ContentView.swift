//
//  ContentView.swift
//  standbytime
//
//  Created by Semih Kesgin on 21.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    let allColors = [Color.black, Color.green.opacity(0.5), Color.yellow, Color.cyan, Color.init(.darkGray)]
    
    @State var color = Color.black
    
var body: some View {
    ZStack {
        ColorBackGround(color: $color)
        VStack {
            Text(Date(), style: .time)
                .tracking(-22)
                
                .foregroundStyle(
                        LinearGradient(
                            colors: [.blue, .purple, .red],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                        
                    )
                .font(.custom(
                    "Viga-Regular",
                    fixedSize: 250
                    
))
                .padding(-50)
                
            Button(action: {
                color = allColors[Int.random(in: 0...4)]
             }) {
                 Image(systemName: "lightbulb.circle.fill")
                     .imageScale(.large)
             }
             .foregroundColor(.secondary)
             .buttonStyle(.borderedProminent)
                    // .buttonBorderShape(.capsule)
                     .opacity(0.5)
        }
    }   .ignoresSafeArea()
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
