//
//  ContentView.swift
//  WeatherApp
//
//  Created by Jules Fakhouri on 20/03/2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
