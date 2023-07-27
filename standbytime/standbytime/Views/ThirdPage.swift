//
//  ThirdPage.swift
//  standbytime
//
//  Created by Semih Kesgin on 27.07.2023.
//

import SwiftUI

struct ThirdPage: View {

        @Environment(\.colorScheme) var colorScheme
    let date = Date()
        
        @State private var currentTime = Date()

        var body: some View {
            ZStack{
                Color.black
                    .ignoresSafeArea()
                ZStack {
                    // saat gösterimi
                Text(getFormattedTime())
                        .foregroundColor(Color("Green"))
                        .padding(.leading, -130)
                        .font(.custom(
                                        "SquadaOne-Regular",
                                        fixedSize: 250
                                        ))
                        .frame(width: .infinity, alignment: .trailing)
                    
                    // gün gösterimi
                    Text(date.formatted(.dateTime.weekday()))
                        .foregroundColor(Color("Green"))
                        .font(.title)
                        .padding(.top, -90)
                        .padding(.leading, 450)
                        .font(.custom(
                                        "SquadaOne-Regular",
                                        fixedSize: 250
                                        ))
                    
                    // rakam olarak gün
                    Text(date.formatted(.dateTime.day()))
                        .foregroundColor(.white)
                        .font(.title)
                        .padding(.top, -90)
                        .padding(.leading, 550)
                        .font(.custom(
                                        "SquadaOne-Regular",
                                        fixedSize: 250
                                        ))
                    
                      
                
                    
                            
                            
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
            formatter.dateFormat = "HH:mm"
            return formatter.string(from: currentTime)
        }
    }

struct ThirdPage_Previews: PreviewProvider {
    static var previews: some View {
        ThirdPage()
    }
}
