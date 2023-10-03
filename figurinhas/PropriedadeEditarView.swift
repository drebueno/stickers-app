//
//  PropriedadeEditarView.swift
//  figurinhas
//
//  Created by Carlos Henrique on 27/09/23.
//

import SwiftUI

struct PropriedadeEditarView: View {
    
        
       @Binding var valor: String
       @Binding var valorInt: Int
       @Binding var valorDecimal: Double
        var tipo: TipoPropriedade = .numeroDecimal
        
    var body: some View {
        VStack {
            if tipo == .numeroInteiro {
                Stepper("valor atual: \(valorInt)", value: $valorInt)
            }
            if tipo == .numeroDecimal {
                Text("valor atual: \(valorDecimal * 100, specifier: "%.0f")%")
                Slider(value:$valorDecimal )
                
            }
            if tipo == .texto {
                TextEditor(text: $valor)
                
            }
            Spacer()
        }
        
        .padding()
    }
}

struct PropriedadeEditarView_Previews: PreviewProvider {
    static var previews: some View {
        PropriedadeEditarView(valor: .constant(""), valorInt: .constant(0), valorDecimal: .constant(1.0), tipo: .numeroDecimal)
    }
}
