//
//  HeaderView.swift
//  Destination
//
//  Created by Julian Chin A Foeng on 11/07/2023.
//

import SwiftUI

struct HeaderView: View {
    let name: String
    let greeting: String
    var showGreeting = true;
    var center = false;
    var body: some View {
        HStack{
            
            IconRounded(icon: "airplane", background: Color("IconBackground"))
            if (center){
                Spacer()
            }
            VStack(alignment: .leading){
                if (showGreeting){
                    Text(greeting)
                        .font(.caption)
                        .foregroundColor(.white)
                }
                Text(name)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            Spacer()
            IconRounded(icon: "bell.fill", background: Color("IconBackground"))
            
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(name: "Test", greeting: "Good Morning")
    }
}

struct IconRounded: View {
    let icon: String
    var color: Color = .white
    let background: Color
    var width: CGFloat = 40
    var height: CGFloat = 40
    var body: some View{
        Image(systemName: icon)
            .frame(width: width, height: height)
            .foregroundColor(color)
            .background(background)
            .clipShape(Circle())
    }
}
