//
//  CardView.swift
//  SwiftUI-ScrollViews
//
//  Created by Pradyumn Shukla on 04/01/21.
//

import SwiftUI

struct CardView: View {
    var image: String
    var category: String
    var heading: String
    var author: String
    
    var body: some View {
        VStack (alignment: .leading) {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("\(category)")
                .font(.headline)
                .foregroundColor(.secondary)
                .padding(.horizontal)
            Text("\(heading)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(.black)
                .foregroundColor(.primary)
                .padding(.horizontal)
                .lineLimit(3)
                .minimumScaleFactor(0.5)


            Text("Written by \(author)".uppercased())
                .font(.caption)
                .foregroundColor(.secondary)
                .padding(.horizontal)
                .padding(.bottom)

        }

        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.1), lineWidth: 1)
            
        )
        .padding([.top, .horizontal])
        
    }
    
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Pradyumn")
            
    }
}
