//
//  propriedadesView.swift
//  figurinhas
//
//  Created by Carlos Henrique on 26/09/23.
//

import SwiftUI

enum TipoPropriedade {
case numeroInteiro
case numeroDecimal
case texto
}
struct PropriedadesView: View {
    
    var imagem: String = "lifepreserver"
    var nome: String = "Vidas: "
   @Binding var valor: String
   @Binding var valorInt: Int
    @Binding var valorDecimal: Double
    var cor: Color = .green
    var tipo: TipoPropriedade = .texto
    
    @State private var apresentado = false
    
    var body: some View {
        Button(action: {
            apresentado = true
        }) {
            HStack {
                Image(systemName: imagem)
                    .foregroundColor(cor)
                    .frame(width: 30.0, height: 30.0)
                    .font(.system(size: 30))
                
                Text(nome)
                
                if tipo == .texto {
                    Text(valor)
                    .padding(.trailing)

                }
                if tipo == .numeroInteiro {
                    Text("\(valorInt)")
                        .padding(.trailing)
                }
               
                if tipo == .numeroDecimal {
                    Text("\(valorDecimal * 100, specifier: "%.0f")%")
                        .padding(.trailing)
                }
            }
        }
        .sheet(isPresented: $apresentado) {
            PropriedadeEditarView(valor: $valor, valorInt: $valorInt, valorDecimal: $valorDecimal, tipo: tipo)
        }
    }
}

struct PropriedadesView_Previews: PreviewProvider {
    static var previews: some View {
        PropriedadesView(valor: .constant(""), valorInt: .constant(0), valorDecimal: .constant(0))
    }
}
