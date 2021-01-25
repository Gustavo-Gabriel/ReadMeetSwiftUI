//
//  ContentView.swift
//  ReadMeetSwiftUI
//
//  Created by Gustavo Anjos on 18/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView{
            HomeView().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            
            Text("Descubra").tabItem {
                Image(systemName: "magnifyingglass")
                Text("Descubra")
            }
            
            Text("Notificacoes").tabItem {
                Image(systemName: "bell")
                Text("Notificações")
            }
            
            Text("Perfil").tabItem {
                Image(systemName: "person")
                Text("Perfil")
            }
        }.accentColor(Color(thirdColor))
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
