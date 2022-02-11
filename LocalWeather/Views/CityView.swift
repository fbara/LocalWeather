//
//  CityView.swift
//  LocalWeather
//
//  Created by Frank Bara on 2/11/22.
//

import SwiftUI

struct CityView: View {
    
    @ObservedObject var cityVM: CityViewViewModel
    
    var body: some View {
        
        VStack {
            CityNameView(city: cityVM.city, date: cityVM.date)
                .shadow(radius: 0)
            TodayWeatherView(cityVM: cityVM)
                .padding()
            HourlyWeatherView(cityVM: cityVM)
            DailyWeatherView(cityVM: cityVM)
        }
        .padding(.bottom, 30)
    }
}

struct CityWeatherView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
