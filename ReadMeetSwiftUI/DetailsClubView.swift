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
                        .font(.system(size: 16, weight: .regular, design: .default))
                        .padding()
                    
                    Spacer()
                }
                
                
                    ScrollView(.horizontal, showsIndicators: false ){
                        
                        HStack{
                            Image("person1")
                                .resizable()
                                .frame(width: 34, height: 34, alignment: .center)
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .cornerRadius(17)
                                .padding(.horizontal, 0)
                            
                            Image("person2")
                                .resizable()
                                .frame(width: 34, height: 34, alignment: .center)
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .cornerRadius(17)
                                .padding(.horizontal,0)
                            
                            Image("person3")
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
                            
                            Image("person2")
                                .resizable()
                                .frame(width: 34, height: 34, alignment: .center)
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .cornerRadius(17)
                                .padding(.horizontal, 0)
                            
                            Image("person3")
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
                        }.padding(.horizontal)
                        
                    }
                    
                HStack{
                    Text("Leitura Atual")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .padding()
                    
                    Spacer()
                }
                
                HStack{
                    Image("capa1")
                        .resizable()
                        .frame(width: 100, height: 144, alignment: .center)
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .padding(.horizontal)
                    
                    VStack{
                        Text("Carry On Lovers")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 22, weight: .bold, design: .default))
                            .padding(.horizontal, -12)
                        Text("Rainbow Rowell")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 16, weight: .regular, design: .default))
                            .padding(.horizontal, -12)
                        Text("450 Páginas")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 16, weight: .regular, design: .default))
                            .padding(.horizontal, -12)
                    }
                        
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false ){
                    
                    HStack{
                        
                        ForEach((1...10).reversed(), id: \.self) { capitulo in
                            ZStack{
                                
                                Color(firstColor)
                                
                                VStack{
                                    Text("Cap")
                                        .font(.system(size: 18, weight: .regular, design: .default))
                                        .foregroundColor(.white)
                                    Text(String(capitulo))
                                        .font(.system(size: 18, weight: .bold, design: .default))
                                        .foregroundColor(.white)
                                }

                            }
                            .frame(width: 42, height: 50, alignment: .center)
                            .cornerRadius(6)
                        }

                    }.padding()
                    
                }
                
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
