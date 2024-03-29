//
//  SettingsView.swift
//  Crypto
//
//  Created by Lawson Guilbeau on 2/24/24.
//

import SwiftUI

struct SettingsView: View {
    
    let defaultURL = URL(string: "https://www.google.com")!
    let coingeckoURL = URL(string: "https://www.coingecko.com")!
    let personalURL = URL(string: "https://github.com/JiggyMac12")!
    let learnmoreURL = URL(string: "https://en.wikipedia.org/wiki/Cryptocurrency")!
    let privacyPolicyURL = URL(string: "https://lawsonguilbeau.github.io/privacy.html")!
    let termsPolicyURL = URL(string: "https://lawsonguilbeau.github.io/terms.html")!
    
    var body: some View {
        NavigationView {
            ZStack {
                
                // background layer
                Color.theme.background
                    .ignoresSafeArea()
                
                // content layer
                List {
                    appDescriptionSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    coinGeckoSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    developerSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                    applicationSection
                        .listRowBackground(Color.theme.background.opacity(0.5))
                }
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
            }
        }
    }
}

#Preview {
    SettingsView()
}

extension SettingsView {
    
    private var appDescriptionSection: some View {
        Section(header: Text("Crypto")) {
            VStack(alignment: .leading) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was with help from CoinGecko API and various sources for documentation. It uses MVVM Architecture, Combine, and CoreData!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading) {
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("The cryptocurrency that is used in this app comes from a free API from CoinGecko! Prices update every five minutes.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link( "Visit CoinGecko", destination: coingeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Developer")) {
            VStack(alignment: .leading) {
                Image("me")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This app was developed by Lawson Guilbeau. It uses SwiftUI and is written 100% in Swift. The project benefits from multi-threading, publishers/subscribers, and data persistance.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundStyle(Color.theme.accent)
            }
            .padding(.vertical)
            Link( "Check out my GitHub", destination: personalURL)
        }
    }
    
    private var applicationSection: some View {
        Section(header: Text("Application")) {
            Link( "Terms of Service", destination: termsPolicyURL)
            Link( "Privacy Policy", destination: privacyPolicyURL)
            Link( "Learn More", destination: learnmoreURL)
        }
    }
}
