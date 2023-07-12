//
//  UserTicketView.swift
//  Destination
//
//  Created by Julian Chin A Foeng on 11/07/2023.
//

import SwiftUI

struct UserTicketView: View {
    var textColor: Color = Color.gray
    var titleColor: Color = Color.black
    var backgroundColor: Color = Color("TextField")
    var body: some View {
        VStack(spacing: 0){
           TopSectionTicket(backgroundColor: backgroundColor)
            BottomSectionTicket(textColor: textColor, titleColor: titleColor, backgroundColor: backgroundColor)
            
        }
    }
}

struct TopSectionTicket: View{
    var backgroundColor: Color = Color("TextField")

    var body: some View{
        HStack{
            Text("Canada Airlines")
            Spacer()
            Text("$550")
            
        }
        .padding([.vertical, .horizontal])
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct BottomSectionTicket: View{
    var textColor: Color = Color.gray
    var titleColor: Color = Color.black
    var backgroundColor: Color = Color("TextField")
    var body: some View{
        VStack{
            HStack{
                Text("Canada")
                    .foregroundColor(textColor)
                Spacer()
                Text("Mexico")
                    .foregroundColor(textColor)
            }
            HStack{
                Text("RRP")
                    .bold()
                    .foregroundColor(titleColor)
                Spacer()
                Text("TNA")
                    .bold()
                    .foregroundColor(titleColor)
            }
            HStack{
                Text("10 June 2023")
                    .font(.caption)
                    .foregroundColor(textColor)
                    
                Spacer()
                Text("2 Hour 50 min")
                    .font(.caption)
                    .foregroundColor(textColor)
                Spacer()
                Text("10 June 2023")
                    .font(.caption)
                    .foregroundColor(textColor)
            }
            
        }
        
        .padding()
        .background(backgroundColor)
        .cornerRadius(10)
    }
}
struct UserTicketView_Previews: PreviewProvider {
    static var previews: some View {
        UserTicketView()
    }
}
