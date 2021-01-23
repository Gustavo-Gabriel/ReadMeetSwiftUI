//
//  MyClubsView.swift
//  ReadMeetSwiftUI
//
//  Created by Gustavo Anjos on 23/01/21.
//

import SwiftUI

struct MyClubsView: View {
    
    let nameClub: String
    
    var body: some View {
        HStack{
            ZStack{
                Color(.red)
                
                VStack{
                    HStack{
                        Text(nameClub)
                            .padding()
                        Spacer()
                    }
                    
                    HStack{
                        Image(systemName: "heart")
                            .frame(width: 13, height: 11, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .padding(.leading)
                        
                        Text("30k")
                            .font(.system(size: 10, weight: .regular, design: .default))
                        
                        
                        Spacer()
                    }
                }

            }
         
        }
        .frame(width: 119, height: 148, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .cornerRadius(12)
    }
}

struct MyClubsView_Previews: PreviewProvider {
    static var previews: some View {
        MyClubsView(nameClub: "")
    }
}
