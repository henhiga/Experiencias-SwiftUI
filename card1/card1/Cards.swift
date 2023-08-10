//
//  Cards.swift
//  card1
//
//  Created by Henrique on 07/08/23.
//

import SwiftUI

struct Cards: View {
    var animalname : String
    var corAtras : Color
    
    var body: some View {
        ZStack{
            VStack(spacing: 0){
                ZStack{
                    Rectangle()
                        .foregroundColor(corAtras)
                        .frame(width: 250, height: 230)
                        .shadow(radius: 5)
                    ZStack{
                        Image("dog")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 150)
                    }
                    .frame(width: 250, height: 230, alignment: .bottom)
                }
                ZStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 250, height: 170)
                        .shadow(radius: 5)
                    VStack(alignment: .center, spacing: 5){
                        Text(animalname)
                            .font(.title2)
                            .bold()
                        Text("Lovely animals always make us happy")
                            .multilineTextAlignment(.center)
                            .frame(width: 200.0)
                        
                    }
                }
            }
        }
    }
}

