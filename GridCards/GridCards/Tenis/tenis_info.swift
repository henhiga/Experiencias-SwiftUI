//
//  tenis_info.swift
//  GridCards
//
//  Created by Henrique on 09/08/23.
//

import SwiftUI

struct tenis_info: View {
    @Environment (\.dismiss) var dismiss
    private let images = ["jordan_1", "jordan_1", "jordan_1", "jordan_1"]
    var body: some View {
        NavigationStack{
            VStack(){
                List{
                    imgslider()
                        .frame(height: 300)
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                .scrollContentBackground(.hidden)
                HStack{
                    Text("Jordan 1 Retro High OG")
                        .fontWeight(.bold)
                        .padding(.leading, 30)
                    Spacer()
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(.purple)
                        .padding(.trailing, 30)
                }
                
                HStack(spacing: 30){
                    Text("purchase date")
                    Text("size(us)")
                    Text("Condition")
                }
                HStack(spacing: 70){
                    Text("12/12/20")
                        .bold()
                    Text("10.5")
                        .bold()
                    Text("ds")
                        .bold()
                }
                List{
                    Section(header: Text("FINANCIALS")){
                        HStack{
                            Text("Purchase Price")
                            Spacer()
                            Text("$329.99")
                        }
                        HStack{
                            Text("stockX Price")
                            Spacer()
                            Text("$303.00")
                        }
                        HStack{
                            Text("View Receipt")
                            Spacer()
                            Image(systemName: "chevron.right")
                        }
                        
                    }
                }
                .scrollContentBackground(.hidden)
                .frame( maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
                .listStyle(GroupedListStyle())
            }
            .toolbar{
                HStack(alignment: .center, spacing: 65){
                    Button{
                        dismiss()
                    }label: {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.purple)
                    }
                        
                    Text("Jordan 1 Retro High OG")
                    Image(systemName: "square.and.pencil")
                        .foregroundColor(.purple)
                }
            }.navigationBarBackButtonHidden(true)
        }
    }
}

struct tenis_info_Previews: PreviewProvider {
    static var previews: some View {
        tenis_info()
    }
}
