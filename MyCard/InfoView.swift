//
//  InfoView.swift
//  MyCard
//
//  Created by Sergey on 12.01.2022.
//

import SwiftUI


struct InfoView: View {
    
let name: String
let symbolName: String

var body: some View {
    RoundedRectangle(cornerRadius: 50)
        .frame(height: 75)
        .foregroundColor(.white)
        .overlay(
            HStack {
              Image(systemName: symbolName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .foregroundColor(Color.init(red: 0.47, green: 0.55, blue: 0.92, opacity: 1.00))
                Text(name)
                    .bold()
                    .font(.system(size: 20))
            }
        )
        .padding(.all)
}
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(name: "email", symbolName: "envelope.fill")
            .previewLayout(.sizeThatFits)
    }
}
