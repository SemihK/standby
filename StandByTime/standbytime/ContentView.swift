//
//  ContentView.swift
//  standbytime
//
//  Created by Semih Kesgin on 21.07.2023.
//

import SwiftUI

struct ContentView: View {
 
    var body: some View {
    
        ZStack {
            Color.yellow
                .ignoresSafeArea()
            Text(Date(), style: .time)
                .foregroundColor(Color.white)
                .font(.system(size: 140))
        .bold()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
