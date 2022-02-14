//
//  ContentView.swift
//  LocalWeather
//
//  Created by Frank Bara on 2/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cityVM = CityViewViewModel()
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                MenuHeaderView(cityVM: cityVM).padding()
                
                ScrollView(showsIndicators: false) {
                    CityView(cityVM: cityVM)
                }
                .padding(.top, 10)
            }
            .padding(.top, 40)
        }
        .background(RoundedRectangle(cornerRadius: 5).fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(#colorLiteral(red: 0.4196078431, green: 0.5333333333, blue: 0.937254902, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
