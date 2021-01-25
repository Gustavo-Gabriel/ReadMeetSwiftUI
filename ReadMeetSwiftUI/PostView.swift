//
//  PostView.swift
//  ReadMeetSwiftUI
//
//  Created by Gustavo Anjos on 24/01/21.
//

import SwiftUI

struct PostView: View {
    
    let imageModel: String
    let nameModel: String
    let postModel: String
    
    var body: some View {
        
        VStack{
            HStack{
                Image(imageModel)
                    .resizable()
                    .frame(width: 46, height: 46, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .cornerRadius(23)
                
                VStack{
                    HStack{
                        Text(nameModel)
                            .font(.system(size: 14, weight: .regular, design: .default))
                        
                        Spacer()
                    }
                    
                    HStack{
                        Text("7 de junho às 15:41")
                            .font(.system(size: 11, weight: .regular, design: .default))
                        
                        Spacer()
                    }
                }
                
                Spacer()
            }
            
            HStack{
                Text(postModel)
                    .foregroundColor(Color(textPostColor))
                    .font(.system(size: 14, weight: .regular, design: .default))
                    .multilineTextAlignment(.leading)
                
                Spacer()
            }
        }.padding()
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(imageModel: "", nameModel: "", postModel: "")
    }
}
