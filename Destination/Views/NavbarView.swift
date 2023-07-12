//
//  Navbar.swift
//  Destination
//
//  Created by Julian Chin A Foeng on 05/07/2023.
//

import SwiftUI

struct Navbar: View {
    var body: some View { 
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            
            TicketsView()
                .tabItem{
                    Label("Ticket", systemImage: "ticket")
                }
            HistoryView()
                .tabItem{
                    Label("History", systemImage: "doc.text")
                }
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
        .onAppear(){
            UITabBar.appearance().backgroundColor = .white
        }
    }
    
}

struct Navbar_Previews: PreviewProvider {
    static var previews: some View {
        Navbar()
    }
}
