//
//  ContentView.swift
//  figurinhas
//
//  Created by Carlos Henrique on 25/09/23.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        TabView{
            NavigationView {
                Figuras()
            }
            .tabItem {
                Label ("Figuras", systemImage: "face.smiling")
                
            }
            
            
            NavigationView {
                MinhaColecaoView()
                
            }
                .tabItem {
                    Label ("Minha Colecão", systemImage: "face.dashed")
                    
                }
        }
    }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    

