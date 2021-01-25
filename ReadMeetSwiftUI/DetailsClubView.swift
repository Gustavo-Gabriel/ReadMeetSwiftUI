//
//  DetailsClubView.swift
//  ReadMeetSwiftUI
//
//  Created by Gustavo Anjos on 25/01/21.
//

import SwiftUI

struct DetailsClubView: View {
    var body: some View {
        NavigationView{
            
            VStack{
                
                HStack{
                    Text("Participantes")
                        .padding()
                    
                    Spacer()
                }
                
                HStack{
                    Image("person1")
                        .resizable()
                        .frame(width: 34, height: 34, alignment: .center)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .cornerRadius(17)
                        .padding(.horizontal, 0)
                    
                    Image("person1")
                        .resizable()
                        .frame(width: 34, height: 34, alignment: .center)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .cornerRadius(17)
                        .padding(.horizontal,0)
                    
                    Image("person1")
                        .resizable()
                        .frame(width: 34, height: 34, alignment: .center)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .cornerRadius(17)
                        .padding(.horizontal, 0)
                    
                    Image("person1")
                        .resizable()
                        .frame(width: 34, height: 34, alignment: .center)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .cornerRadius(17)
                        .padding(.horizontal, 0)
                    
                    Image("person1")
                        .resizable()
                        .frame(width: 34, height: 34, alignment: .center)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .cornerRadius(17)
                        .padding(.horizontal, 0)
                    
                    Image("person1")
                        .resizable()
                        .frame(width: 34, height: 34, alignment: .center)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .cornerRadius(17)
                        .padding(.horizontal, 0)
                    
                    Image("person1")
                        .resizable()
                        .frame(width: 34, height: 34, alignment: .center)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .cornerRadius(17)
                        .padding(.horizontal, 0)

                    Spacer()
                }.padding(.horizontal)
                
                Spacer()
            }
            
        }
        .navigationBarTitle(Text("Carry on Lovers"))
    }
}

struct DetailsClubView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsClubView()
    }
}
