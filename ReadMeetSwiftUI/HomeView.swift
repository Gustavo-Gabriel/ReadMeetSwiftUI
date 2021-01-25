//
//  HomeView.swift
//  ReadMeetSwiftUI
//
//  Created by Gustavo Anjos on 24/01/21.
//

import SwiftUI

struct HomeView: View {
    
    @State private var showingActionSheet = false
    
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
                    
                    HStack{
                        Text("Novidades")
                            .font(.system(size: 24, weight: .bold, design: .default))
                            .padding()
                        
                        Spacer()
                    }
                    
                    PostView(imageModel: "person1", nameModel: "Mark Zuckerberg", postModel: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volupat. Ut wisi enim ad minim veniam.")
                    
                    PostView(imageModel: "person2", nameModel: "Jeff Bezos", postModel: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volupat. Ut wisi enim ad minim veniam.")
                    
                    PostView(imageModel: "person3", nameModel: "Bill Gates", postModel: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volupat. Ut wisi enim ad minim veniam.")
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
                    .onTapGesture {
                        self.showingActionSheet = true
                    }
                    .actionSheet(isPresented: $showingActionSheet) {
                        
                        
                        ActionSheet(title: Text(""), buttons: [
                            .default(Text("Escrever Resenha")) {},
                            .default(Text("Fazer Upload de Vídeo")) {},
                            .default(Text("Criar Lista de Leitura")) {},
                            .default(Text("Criar Clube de Leitura")) {},
                            .cancel(Text("Cancelar"))
                        ])
                    }
            }))
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
