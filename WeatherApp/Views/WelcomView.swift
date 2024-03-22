//
//  WelcomView.swift
//  WeatherApp
//
//  Created by Jules Fakhouri on 21/03/2024.
//

import SwiftUI
import CoreLocationUI

struct WelcomView: View {
    var body: some View {
        @EnvironmentObject var locationManager: LocationManager
        VStack {
            VStack(spacing:20) {
                Text("Welcome to the weatherApp")
                    .bold().font(.title)

                Text("Please share you courent location")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()

            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
        }
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    WelcomView()
}
