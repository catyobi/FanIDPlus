//
//  FindFanFestView.swift
//  FanIDPlus
//
//  Created by Catalina Obando on 12/4/25.
//
import SwiftUI

struct FindFanFestView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {

                Text("Find FanFest Near You")
                    .font(.title2.bold())

                Text("Explore food, music, and matches near your location.")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)

                // Map image from Assets (map-placeholder.png)
                Image("map-placeholder")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(16)
                    .shadow(radius: 4)

                NavigationLink("Back to Home") {
                    HomeView()
                }
                .padding(.top)
            }
            .padding()
        }
        .navigationTitle("FanFest")
    }
}
