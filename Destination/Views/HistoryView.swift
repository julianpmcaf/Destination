//
//  HistoryView.swift
//  Destination
//
//  Created by Julian Chin A Foeng on 12/07/2023.
//

import SwiftUI

struct HistoryView: View {
    var body: some View {
        VStack(spacing: 0){
            HeaderView(name: "History", greeting: "", showGreeting: false, center: true)
                .frame(maxWidth: .infinity)
                .padding([.bottom, .horizontal])
                .background(Color.accentColor)
            ScrollView{
                VStack(alignment: .leading){
                    Text("Today")
                        .fontWeight(.semibold)
                        .padding(.top, 40)
                    Article(icon: "airplane", title: "Your booking has been successful", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at commodo ipsum. Ut rhoncus nunc at leo porta, ut vehicula nisi aliquam.", date: "20 June 2023", time: "8:30 PM")
                    Article(icon: "hand.raised", title: "Your booking has been successful", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi at commodo ipsum. Ut rhoncus nunc at leo porta, ut vehicula nisi aliquam.", date: "20 June 2023",  time: "8:30 PM")
                    Text("Yesterday")
                        .fontWeight(.semibold)
                        .padding(.top, 40)
                    
                }
                .padding(.horizontal)
                .background(Color.white)
            }
        }  
    }
}
struct Article: View{
    let icon: String
    let title: String
    let description: String
    let date: String
    let time: String
    var body: some View{
        HStack(alignment: .top){
            
            IconRounded(icon: icon, color: .black,background: Color("TextField"))
            VStack(alignment: .leading){
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text(description)
                    
                    .font(.caption)
                    .foregroundColor(.gray)
                HStack{
                    Text(date)
                    Text("•")
                    Text(time)
                }
                .padding(.top, 5)
                .font(.caption)
                
                .foregroundColor(.gray)
            }
            
        }
        
        
        .frame(maxWidth: .infinity, alignment: .leading)
        Divider()
    }
}
struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryView()
    }
}
