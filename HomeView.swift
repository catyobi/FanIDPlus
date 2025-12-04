//
//  ContentView.swift
//  FanIDPlus
//
//  Created by Catalina Obando on 12/4/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 0) {

            // Blue bar behind the system status bar
            Color.blue
                .frame(height: 54)
                .ignoresSafeArea(edges: .top)

            // MAIN CONTENT
            VStack(alignment: .leading, spacing: 24) {

                // Top title + logo
                HStack(alignment: .top) {
                    Text("FanID+")
                        .font(.system(size: 28, weight: .bold))

                    Spacer()

                    Image("fifaLogo") // make sure this exists in Assets
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80)
                        .padding(.top, -10)
                }
                .padding(.top, 24)

                // Center greeting text
                VStack(spacing: 8) {
                    Text("Hello, (User’s First Name)")
                        .font(.title2.bold())
                        .multilineTextAlignment(.center)

                    Text("What would you like to do today?")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 40)

                // MAIN BUTTONS
                VStack(spacing: 24) {

                    mainButton(title: "Find FanFest",
                               systemImage: "map.circle") {
                        FindFanFestView()
                    }

                    mainButton(title: "View Schedule",
                               systemImage: "calendar") {
                        EventsView()
                    }

                    mainButton(title: "My Wallet",
                               systemImage: "creditcard") {
                        FanIDView()
                    }
                }
                .padding(.top, 20)

                Spacer()

                // FOOTER
                Text("Securely powered by FIFA | Works with Apple Watch")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity)
                    .padding(.bottom, 24)
            }
            .padding(.horizontal, 24)
        }
        .background(Color.white)
        .navigationBarHidden(true)
    }

    // White rounded “card” button with icon
    @ViewBuilder
    func mainButton<Destination: View>(
        title: String,
        systemImage: String,
        @ViewBuilder destination: () -> Destination
    ) -> some View {
        NavigationLink {
            destination()
        } label: {
            HStack(spacing: 12) {
                Image(systemName: systemImage)
                    .font(.title3)
                Text(title)
                    .font(.headline)
                Spacer()
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 18)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(18)
            .shadow(color: .black.opacity(0.1), radius: 6, x: 0, y: 3)
        }
        .buttonStyle(.plain)
    }
}
