//
//  ContentView.swift
//  StandByTime
//
//  Created by Semih Kesgin on 20.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        HStack {
                    
                    Text(Date(), style: .time)
                .font(.largeTitle)
                .bold()
                }
        
        
    }
}
#Preview {
    ContentView()
}
