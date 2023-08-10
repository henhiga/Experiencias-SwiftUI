//
//  Cards5.swift
//  card1
//
//  Created by Henrique on 07/08/23.
//

import SwiftUI

struct Cards5: View {
    var body: some View {
        VStack{
            HStack{
                Text("batiman")
                    .foregroundColor(.blue)
                Image(systemName: "stairs")
                    .rotationEffect(.degrees(90))
                    .padding(.leading, 30)
                    .foregroundColor(.blue)
                Text("7.8")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
            }
            Image("batiman")
            Text("loren")
                .foregroundColor(.blue)
            ZStack{
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.white)
                    .border(.blue)
                    .frame(width: 150, height: 40)
                    .onTapGesture {
                        if let url = URL(string: "https://www.youtube.com/watch?v=J0H7Du2txOE") {
                            UIApplication.shared.open(url)}
                    }
                Text("Watch Trailer")
                    .foregroundColor(.blue)
            }
        }
    }
}

struct Cards5_Previews: PreviewProvider {
    static var previews: some View {
        Cards5()
    }
}
