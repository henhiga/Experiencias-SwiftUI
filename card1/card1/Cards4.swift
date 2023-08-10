//
//  Cards4.swift
//  card1
//
//  Created by Henrique on 07/08/23.
//

import SwiftUI

struct Cards4: View {
    var body: some View {
        ZStack{
            Image("102")
                .resizable()
                .scaledToFill()
                .brightness(-0.4)
            VStack(alignment: .leading, spacing: 15){
                Text("Batman. Dark Knight Returns")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .frame(width: 310, alignment: .leading)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed felis nulla. Etiam enim erat, tempor et lectus in, rhoncus pellentesque elit.")
                    .foregroundColor(Color.white)
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 150, height: 40)
                            .border(.white)
                            .onTapGesture {
                                if let url = URL(string: "https://www.youtube.com/watch?v=J0H7Du2txOE") {
                                    UIApplication.shared.open(url)}
                            }
                        Text("Watch Trailer")
                            .colorInvert()
                    }
                    .padding(.trailing, 40)
                    Image(systemName: "stairs")
                        .rotationEffect(.degrees(90))
                        .colorInvert()
                        .padding(.leading, 30)
                    Text("7.8")
                        .font(.largeTitle)
                        .colorInvert()
                }
                    
            }
            .padding(.leading, 20)
            .padding(.top, 350)
            
        }
        .background(.white)
        .shadow(radius: 2)
        .frame(maxWidth: .infinity)
        .frame(height: 600)
        .padding(20)
        
    }
}

struct Cards4_Previews: PreviewProvider {
    static var previews: some View {
        Cards4()
    }
}
