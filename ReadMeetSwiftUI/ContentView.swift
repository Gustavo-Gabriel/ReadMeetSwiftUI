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
                HStack{
                    Text("Meus Clubes")
                        .padding()
                    Spacer()
                }
                
                ScrollView(.vertical, showsIndicators: false ){
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15){
                            
                            MyClubsView(nameClub: "Carry OnLovers")
                            MyClubsView(nameClub: "Romance Readers")
                            MyClubsView(nameClub: "Só Classicos Brasileiros")
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
