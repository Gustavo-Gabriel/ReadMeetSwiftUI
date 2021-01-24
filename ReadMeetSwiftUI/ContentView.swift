//
//  ContentView.swift
//  ReadMeetSwiftUI
//
//  Created by Gustavo Anjos on 18/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            VStack{
                
                ScrollView(.vertical, showsIndicators: false ){
                    
                    HStack{
                        Text("Meus Clubes")
                            .font(.system(size: 24, weight: .bold, design: .default))
                            .padding()
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15){
                            
                            MyClubsView(nameClub: "Carry On Lovers", colorClub: firstColor)
                            MyClubsView(nameClub: "Romance Readers", colorClub: secondColor)
                            MyClubsView(nameClub: "Só Classi Brasileiros", colorClub: thirdColor)
                            MyClubsView(nameClub: "Franz Kafka", colorClub: firstColor)
                        }
                        .padding(.vertical, 0.1)
                        .padding(.horizontal)
                        
                    }
                    
                    HStack{
                        Text("Minhas Listas")
                            .font(.system(size: 24, weight: .bold, design: .default))
                            .padding()
                        
                        Spacer()
                    }
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10){
                            
                            MyListView(nameList: "Favoritos")
                            MyListView(nameList: "Romances")
                            MyListView(nameList: "LGBT")
                            MyListView(nameList: "Nerd")
                            
                        }
                        .padding(.vertical, 0.1)
                        .padding(.horizontal)
                        
                    }
                }
                
                
                
                Spacer()
                
            }
                
                .navigationBarTitle(Text("Home"))
                .navigationBarItems(trailing: Button(action: {
                    
                }, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.orange)
                        .frame(width: 44, height: 44, alignment: .center)
                        .aspectRatio(contentMode: .fill)
                }))
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
