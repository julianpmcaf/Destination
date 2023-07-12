//
//  WindowView.swift
//  Destination
//
//  Created by Julian Chin A Foeng on 11/07/2023.
//

import SwiftUI

struct WindowView: View {
    var body: some View {
        VStack{
            
            CustomTextField(title: "From", icon: "airplane")
                .cornerRadius(10)
                
                .padding([.bottom], 5)
            CustomTextField(title: "To",                             icon: "house")
                .cornerRadius(10)
                .padding([.bottom], 5)
            HStack{
                CustomTextField(title: "Departure",                                 includeImage: false)
                    .cornerRadius(10)
                CustomTextField(title: "Return",
                                 includeImage: false)
                    .cornerRadius(10)
            }
            .padding([.bottom], 5)
            NumTextField()
                .cornerRadius(10)
                .padding([.bottom], 5)
            
            NavButtonView(destination: HomeView(), buttonText: "Search")
                .frame(height: 50)
        }
        .padding()
        .background(.white)
        .cornerRadius(20)
        .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.25), radius: 30, x: 0, y: 0)
    }
}
struct NumTextField: View{
    @State var travellers: Int = 0
    var body: some View{
        HStack{
            VStack(alignment: .leading){
                Text("Test")
                    .foregroundColor(Color("Subtext"))
                    .font(.subheadline)
                Text("\(travellers) Persons")
                    .fontWeight(.semibold)
            }
            Spacer()
            Button("+", action: {travellers += 1})
                .fontWeight(.semibold)
            Text("\(travellers)")
                .fontWeight(.bold)
            Button("-", action: {travellers -= 1})
                .fontWeight(.semibold)
        }
        .padding()
        .background(Color("TextField"))
    }
}
struct CustomTextField: View{
    let title: String
    var icon: String = ""
    var includeImage = true
    @State var from: String = "";
    var body: some View{
        HStack{
            if (includeImage) {
                Image(systemName: icon)
                    .padding(.leading)
            }
            VStack(alignment: .leading){
                Text(title)
                    .foregroundColor(Color("Subtext"))
                    .font(.subheadline)
                TextField("", text: $from)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
        .padding(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        .background(Color("TextField"))
       
    }
}

struct WindowView_Previews: PreviewProvider {
    static var previews: some View {
        WindowView()
    }
}
