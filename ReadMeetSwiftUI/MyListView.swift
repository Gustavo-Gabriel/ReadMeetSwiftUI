//
//  MyListView.swift
//  ReadMeetSwiftUI
//
//  Created by Gustavo Anjos on 24/01/21.
//

import SwiftUI

struct MyListView: View {
    
    let nameList: String
    
    var body: some View {
        
        HStack{
            ZStack{
                Color(thirdColor)
                
                VStack{
                    HStack{
                        Text(nameList)
                            .font(.system(size: 14, weight: .bold, design: .default))
                            .padding()
                            .foregroundColor(.white)
                        Spacer()
                    }
                    
                }
                
            }
            
        }
        .frame(width: 118, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .cornerRadius(12)
    }
}

struct MyListView_Previews: PreviewProvider {
    static var previews: some View {
        MyListView(nameList: "")
    }
}
