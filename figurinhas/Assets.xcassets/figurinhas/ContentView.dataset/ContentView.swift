//
//  ContentView.swift
//  figurinhas
//
//  Created by Carlos Henrique on 25/09/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
            
        VStack(alignment: .center) {
            
            Text("Mingle")
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(Color.gray)
                .bold()
                .textCase(/*@START_MENU_TOKEN@*/.lowercase/*@END_MENU_TOKEN@*/)
            
            HStack {
                Text("Frase: ")
                    .bold()
                Text("Problema em dobro")
            }

        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
