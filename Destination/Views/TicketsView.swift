//
//  TicketsView.swift
//  Destination
//
//  Created by Julian Chin A Foeng on 11/07/2023.
//

import SwiftUI

struct TicketsView: View {
    var body: some View {
        
        VStack(spacing: 0){
            VStack{
                HeaderView(name: "My Ticket", greeting: "", showGreeting: false, center: true)
                    .frame(maxWidth: .infinity)
                    .padding([.horizontal,.bottom])
                    .background(Color.accentColor)
                BottomSectionTicket(textColor: .white, titleColor: .white,backgroundColor: Color.accentColor)
                    .background(Color.accentColor)
                    .padding(.bottom)
            }
            .background(Color.accentColor)
            ScrollView{
                Spacer(minLength: 30)
                UserTicketView()
                    .padding(.vertical, 5)
                UserTicketView()
                    .padding(.vertical, 5)
                UserTicketView()
                    .padding(.vertical, 5)
                UserTicketView()
                    .padding(.vertical, 5)
            }
            .padding(.horizontal)
        }
    }
}

struct TicketsView_Previews: PreviewProvider {
    static var previews: some View {
        TicketsView()
    }
}
