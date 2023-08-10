//
//  Cards3.swift
//  card1
//
//  Created by Henrique on 07/08/23.
//

import SwiftUI

struct Cards3: View {
    var body: some View {
        VStack{
            Image("batimam")
                .resizable()
                .scaledToFill()
            VStack(alignment: .leading, spacing: 15){
                Text("Batman v superman. Dawn of Justice")
                    .font(.title)
                    .frame(width: 300, alignment: .leading)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed felis nulla. Etiam enim erat, tempor et lectus in, rhoncus pellentesque elit.")
                HStack{
                    Image(systemName: "stairs")
                        .rotationEffect(.degrees(90))
                    Text("8.1")
                        .font(.largeTitle)
                }
                .padding(10)
                
            }
            .padding(.leading, 20)
        }
        .background(.white)
        .shadow(radius: 2)
        .frame(maxWidth: .infinity)
        .frame(height: 600)
        .padding(20)
    }
}

struct Cards3_Previews: PreviewProvider {
    static var previews: some View {
        Cards3()
    }
}
