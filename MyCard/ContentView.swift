//
//  ContentView.swift
//  MyCard
//
//  Created by Sergey on 12.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.47, green: 0.55, blue: 0.92, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("me1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 180, height: 180)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 3)
                    )
                Text("Сергей Биндасов")
                    .font(.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                .padding()
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(name: "bindasov.sergey@gmail.com", symbolName: "envelope.fill")
                TgView(tgName: "vicevers_a")
            }            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


