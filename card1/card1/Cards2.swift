//
//  Cards2.swift
//  card1
//
//  Created by Henrique on 07/08/23.
//

import SwiftUI

struct Cards2: View {
    @State var teste : Bool
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color("CorBranca"))
                .shadow(radius: 2)
//                .frame(width: 320, height: 120)
            HStack(alignment: .top, spacing: 15){
                Image("logo")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .shadow(radius: 1)
                    .padding(.leading, 15)
                VStack(alignment: .leading, spacing: 5){
                    HStack{
                        Text("Metronome")
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 70, height: 20)
                                .foregroundColor(.blue)
                            Text("Reviewed")
                                .font(.caption)
                                .foregroundColor(.white)
                        }
                        .opacity(teste ? 1 : 0)
                    }
                    Text("Real Estate")
                        .font(.footnote)
                        .fontWeight(.thin)
                    HStack{
                        Text("$28,000,000 / $30,000,000,000")
                            .font(.caption)
                        
                        Spacer()
                        Text("100%")
                            .font(.caption)
                            .fontWeight(.thin)
                            .padding(.trailing, 10)
                    }
                    HStack(alignment: .center){
                        Text("Sponsored")
                            .font(.body)
                            .fontWeight(.regular)
                            .foregroundColor(Color.purple)
                            .padding(.top, 9)
                        Spacer()
                        Text("2d left")
                            .font(.footnote)
                            .fontWeight(.light)
                            .padding(.top, 9)
                            .padding(.trailing, 10)
                    }
                }
                //            VStack(spacing: 15){
                //                Text("100%")
                //                    .font(.caption)
                //                    .fontWeight(.thin)
                //                Text("2d left")
                //                    .font(.footnote)
                //                    .fontWeight(.light)
                //            }
                //            .frame(width: 320, height: 120, alignment: .trailing)
                //            .padding(.top, 45)
                //            .padding(.trailing)
//                ZStack{
//                    RoundedRectangle(cornerRadius: 10)
//                        .frame(width: 70, height: 20)
//                        .foregroundColor(.blue)
//                    Text("Reviewed")
//                        .font(.caption)
//                        .foregroundColor(.white)
//                }
//                .frame(width: 14)
//                .padding(.leading, 60)
            }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 120)
        .padding(20)
        .onTapGesture {
            teste.toggle()
        }
    }
}

struct Cards2_Previews: PreviewProvider {
    static var previews: some View {
        Cards2(teste: false)
    }
}
