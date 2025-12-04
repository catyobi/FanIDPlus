//
//  FanIDView.swift
//  FanIDPlus
//
//  Created by Catalina Obando on 12/4/25.
//
import SwiftUI

struct FanIDView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {

                Text("My Fan ID+")
                    .font(.title2.bold())

                Text("Your secure access and payment pass.")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)

                // Fan ID card
                VStack(spacing: 16) {
                    Text("Name: [User's Name]")
                        .font(.headline)

                    Text("Fan ID: ####-####")
                        .foregroundColor(.gray)

                    Image("qr-placeholder")   // QR image from Assets
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)

                    Text("Tap to Scan at Entrance")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(radius: 4)

                // Wallet card
                VStack(alignment: .leading, spacing: 8) {
                    Text("Wallet Balance: $45.00")
                        .font(.headline)

                    HStack {
                        Text("[Add Funds]")
                        Text("[Transaction History]")
                    }
                    .font(.subheadline)
                    .foregroundColor(.blue)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.white)
                .cornerRadius(16)
                .shadow(radius: 4)

                NavigationLink("Back to Home") {
                    HomeView()
                }
                .padding(.top)
            }
            .padding()
        }
        .navigationTitle("My Fan ID+")
    }
}
