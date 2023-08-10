//
//  list_mensagens.swift
//  GridCards
//
//  Created by Henrique on 09/08/23.
//

import SwiftUI

struct list_mensagens: View {
    var body: some View {
        VStack{
            HStack{
                Text("Messages")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading, 20)
                    .offset(y: 30)
                Spacer()
                Image(systemName: "plus.bubble.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.green)
                    .padding(.trailing, 20)
                    .offset(y: 30)
            }
            List{
                teste(bolinha: true, nome: "Diego", mensagem: "Sure thing man, come on over if you want to see the new designs." , hora: "3:14PM")
                    .listRowBackground(Color("cor1"))
                teste(bolinha: true, nome: "Janet", mensagem: "Do you know where tin foil is at Whole Foods?" , hora: "3:14PM")
                    .listRowBackground(Color("cor1"))
                teste(bolinha: false, nome: "Caleb", mensagem: "Do you know where tin foil is at Whole Foods?" , hora: "3:14PM")
                teste(bolinha: false, nome: "Alfonso", mensagem: "Do you know where tin foil is at Whole Foods?" , hora: "3:14PM")
                teste(bolinha: false, nome: "Gloria", mensagem: "Do you know where tin foil is at Whole Foods?" , hora: "3:14PM")
                teste(bolinha: true, nome: "Janet", mensagem: "Do you know where tin foil is at Whole Foods?" , hora: "3:14PM")
                    .listRowBackground(Color("cor1"))
            }
            .scrollContentBackground(.hidden)
            .frame( maxWidth: .infinity)
            .edgesIgnoringSafeArea(.all)
            .listStyle(GroupedListStyle())

        }
    }
}

struct list_mensagens_Previews: PreviewProvider {
    static var previews: some View {
        list_mensagens()
    }
}
