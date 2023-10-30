//
//  ProfileView.swift
//  investment 101
//
//  Created by Celine Tsai on 25/7/23.
//

import SwiftUI
import Firebase

struct ProfileView: View {
    @State private var isSettingsViewPresented = false

    var body: some View {
        NavigationView {
            ZStack(alignment: .topTrailing) {
                VStack(spacing: 16) {
                    Image("pfp")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 150, height: 120)
                        .clipShape(Circle())

                    Text("John Doe")
                        .font(.title)
                        .bold()

                    HStack {
                        VStack {
                            Text(String(UserDefaults.xpPoints))
                                .font(.title)
                                .bold()

                            Text("Points")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }

                        Spacer()

                        VStack {
                            Text("10")
                                .font(.title)
                                .bold()

                            Text("Streak")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                    .padding(.horizontal, 40)
                    .padding(.vertical, 8)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 2)

                    NavigationLink(destination: StockView()) {
                        Text("View Stats")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(12)
                    }
                }
                .padding()

                NavigationLink(destination: SettingsView()) {
                    Image(systemName: "gearshape")
                        .imageScale(.large)
                        .foregroundColor(.black)
                }
                .padding(.top, -150) // Adjust the padding as needed
                .padding(.trailing, 20)
            }
            .padding(.bottom, 5)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea()
        }
    }
}

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("lol")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

