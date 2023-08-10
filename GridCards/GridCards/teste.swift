//
//  teste.swift
//  GridCards
//
//  Created by Henrique on 09/08/23.
//

import SwiftUI

struct teste: View {
    var bolinha: Bool
    var nome : String
    let mensagem : String
    let hora : String
    
    var body: some View {
        HStack{
            Circle()
                .foregroundColor(Color(hue: 0.566, saturation: 0.967, brightness: 0.684, opacity: 0.569))
                .frame(width: 10, height: 10)
                .opacity(bolinha ? 1 : 0)
            Image("seika")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            VStack(alignment: .leading, spacing: 10){
                HStack(){
                    Text(nome)
                        .bold()
                    Spacer()
                    Text(hora)
                        .font(.caption)
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                        
                }
                Text(mensagem)
                    .font(.subheadline)
                    .frame(width: 250, alignment: .leading)
            }
        }
        .background(bolinha ? Color("cor1") : .white)
        .frame(maxWidth: .infinity)
        .frame(height: 90)
        .edgesIgnoringSafeArea(.all)
    }
}

struct teste_Previews: PreviewProvider {
    static var previews: some View {
        teste(bolinha: true, nome: "Janet", mensagem: "Do you know where tin foil is at Whole Foods?" , hora: "3:14PM")
    }
}
