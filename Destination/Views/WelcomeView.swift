//
//  ContentView.swift
//  Destination
//
//  Created by Julian Chin A Foeng on 05/07/2023.
//

import SwiftUI

struct WelcomeView: View {
    
    var body: some View {
        NavigationView{
            VStack {
                Text("🕷")
                    .font(.system(size:300))
                    .frame(maxWidth:.infinity, maxHeight: .infinity)
                    .background(Color.accentColor)
                VStack{
                    Spacer()
                    Text("Explore Exciting destinations")
                        .font(.largeTitle)
                        .multilineTextAlignment(.center)
                        .fontWeight(.semibold)
                    Spacer()
                    Text("Traveling is an exhilarating escape that fuels our spirits and creates lasting memories. Enjoy yourself with an enriching journey.")
                        .font(.body)
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.center)
                    Spacer()
                    NavButtonView(destination: Navbar().navigationBarBackButtonHidden(true), buttonText: "Show More")
                    Spacer()
                }
                .padding(.horizontal)
                .frame(maxWidth:.infinity, maxHeight: .infinity)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

