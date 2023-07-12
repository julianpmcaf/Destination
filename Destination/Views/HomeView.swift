//
//  HomeView.swift
//  Destination
//
//  Created by Julian Chin A Foeng on 05/07/2023.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .top){
                Rectangle()
                    .frame(maxHeight: 300)
                    .background(Color.accentColor)
                    .foregroundColor(Color.accentColor)
                VStack{
                    HeaderView(name: "Julian Chin A Foeng", greeting: "Good Morning")
                    Text("Securely Book Your Flight Ticket")
                        .frame(maxWidth: .infinity, maxHeight:100,alignment: .leading)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    WindowView()
                    FutureFlightsView()
                        .padding(.vertical)
                    Spacer()
                }
                .padding(.horizontal)
            }
            .background(.white)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }.background(Color.accentColor)
    }
    
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
 
