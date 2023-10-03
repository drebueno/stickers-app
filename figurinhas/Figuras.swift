//
//  Figuras.swift
//  figurinhas
//
//  Created by Carlos Henrique on 26/09/23.
//

import SwiftUI

struct Figuras: View {
    
    
    
    
    var body: some View {
        
        List(figuras) { figura in
            NavigationLink(destination: FiguraDetalheView(figura: figura)) {
                FigurasLinhaView(figura: figura)
                   
                   
                   
               }
           }
            
            
            
        .navigationTitle("Figuras")
                
            }
            
            }
    

    


struct Figuras_Previews: PreviewProvider {
    static var previews: some View {
        Figuras()
    }
}
