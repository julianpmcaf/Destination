//
//  NavButtonView.swift
//  Destination
//
//  Created by Julian Chin A Foeng on 11/07/2023.
//

import SwiftUI

struct NavButtonView<TargetView: View>: View {
    let destination: TargetView
    let buttonText: String
    
    var body: some View {
        NavigationLink(destination: destination){
            Text(buttonText)
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(Color.accentColor)
        .cornerRadius(15)

    }
}

struct NavButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NavButtonView(destination: Navbar(), buttonText: "Show More")
    }
}
