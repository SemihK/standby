//
//  ContentView.swift
//  standbytime
//
//  Created by Semih Kesgin on 21.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    @State private var currentTime = Date()

    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
        VStack {
            Text(getFormattedTime())
                .tracking(-2)
                .font(.custom(
                                    "Viga-Regular",
                                    fixedSize: 180
                                    ))
                .foregroundStyle(
                                        LinearGradient(
                                            colors: [.blue, .purple, .red],
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        )
                                        
                                    )
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(colorScheme == .dark ? Color.customDarkModeColor : Color.customLightModeColor)
                        .foregroundColor(colorScheme == .dark ? .white : .black)
        }
        .onAppear {
            // Timer kullanarak saati güncelle
            let timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
                currentTime = Date()
            }
            // Timer'ın çalışmasını sağlamak için run loop
            RunLoop.current.add(timer, forMode: .common)
        }
        }
    }

    // Saati HH:mm:ss formatında almak için yardımcı fonksiyon
    func getFormattedTime() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss"
        return formatter.string(from: currentTime)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
