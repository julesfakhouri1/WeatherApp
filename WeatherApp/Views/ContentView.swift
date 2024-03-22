//
//  ContentView.swift
//  WeatherApp
//
//  Created by Jules Fakhouri on 20/03/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager  = LocationManager()

    var body: some View {
        VStack {
            WelcomView()
                .environmentObject(locationManager)
        }
        .background(Color(hue: 0.656, saturation: 0.787, brightness: 0.354))
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
    #Preview {
        ContentView()
}
