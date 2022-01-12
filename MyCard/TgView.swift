//
//  InfoView.swift
//  MyCard
//
//  Created by Sergey on 12.01.2022.
//

import SwiftUI

struct TgView: View {
    
    let tgName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .frame(height: 75)
            .foregroundColor(.white)
            .overlay(
                HStack {
                  Image("tg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                    Text(tgName)
                        .bold()
                        .font(.system(size: 20))
                }
            )
            .padding(.all)
    }
}

struct TgView_Previews: PreviewProvider {
    static var previews: some View {
        TgView(tgName: "TelegramName")
            .previewLayout(.sizeThatFits)
    }
}
