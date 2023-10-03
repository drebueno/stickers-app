//
//  FigurasLinhaView.swift
//  figurinhas
//
//  Created by Carlos Henrique on 27/09/23.
//

import SwiftUI

struct FigurasLinhaView: View {
    
    var figura: Figura
    var cor: Color = .gray
    
    var body: some View {
        HStack{
            Image(figura.imagem+"_p")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .background(cor)
                .containerShape(Circle())
            Text(figura.nome)
        }
    }
}

struct FigurasLinhaView_Previews: PreviewProvider {
    static var previews: some View {
        FigurasLinhaView(figura: figuras[0])
    }
}
