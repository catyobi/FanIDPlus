//
//  EventsView.swift
//  FanIDPlus
//
//  Created by Catalina Obando on 12/4/25.
//
import SwiftUI

struct EventsView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {

                Text("Today's Events")
                    .font(.title2.bold())

                Text("Stay updated with what's happening at FanFest.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)

                eventCard(
                    icon: "music.note",
                    title: "Live DJ Set",
                    details: "12:00 PM – Main Stage, Zone A"
                )

                eventCard(
                    icon: "sportscourt",   // or "soccerball" if available
                    title: "Match Viewing: Brazil vs. Spain",
                    details: "2:00 PM – Giant Screen, FanFest Arena"
                )

                eventCard(
                    icon: "mic.fill",
                    title: "Concert: Local Artist Showcase",
                    details: "6:00 PM – Cultural Stage"
                )

                NavigationLink("Back to Home") {
                    HomeView()
                }
                .padding(.top)
            }
            .padding()
        }
        .navigationTitle("Schedule")
    }

    // Reusable event card
    func eventCard(icon: String, title: String, details: String) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Label(title, systemImage: icon)
                .font(.headline)
            Text(details)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.white)
        .cornerRadius(16)
        .shadow(radius: 4)
    }
}
