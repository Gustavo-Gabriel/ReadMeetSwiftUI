//
//  MyClubsView.swift
//  ReadMeetSwiftUI
//
//  Created by Gustavo Anjos on 23/01/21.
//

import SwiftUI

struct MyClubsView: View {
    
    let nameClub: String
    let colorClub: UIColor
    
    var body: some View {
        HStack{
            ZStack{
                Color(colorClub)
                
                VStack{
                    HStack{
                        Text(nameClub)
                            .font(.system(size: 15, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
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
        MyClubsView(nameClub: "", colorClub: UIColor(.red))
    }
}
