//
//  FiguraDetalheView.swift
//  figurinhas
//
//  Created by Carlos Henrique on 26/09/23.
//

import SwiftUI

struct FiguraDetalheView: View {
    
    
   @ObservedObject var figura: Figura
    @EnvironmentObject var minhaColecao: MinhaColecao
    
    var body: some View {
        VStack(alignment: .leading) {
            
            
            
            HStack {
                Text("Frase: ")
                    .bold()
                    .padding(.leading)
                Text("\"\(figura.frase)\"")
            }
            
            HStack(alignment: .center) {
                Image(figura.imagem)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 75)
                
                VStack (alignment: .leading) {
                    
                    PropriedadesView(valor: .constant(""), valorInt: $figura.vidas, valorDecimal: .constant(0), tipo: .numeroInteiro)
                    PropriedadesView(imagem: "bolt", nome: "Potência", valor: .constant(""), valorInt: .constant(0), valorDecimal: $figura.potencia, cor: .yellow, tipo: .numeroDecimal)
                    
                }
                
            }
            .padding(30)
            
            HStack {
                Spacer()
                Text(figura.descricao)
                Spacer()
            }
            
            Spacer()
            
            HStack {
                Spacer()
                Button {
                    
                    minhaColecao.figuras.append(figura)
                    minhaColecao.salvar()
                
                } label: {
                    
                    if minhaColecao.figuras.count == 0 {
                        Text("Adicionar á colecão")
                            .padding()
                            .background(.blue)
                            .foregroundColor(.white)
                        
                    } else {
                        Text("Na sua colecão:\(minhaColecao.figuras.count)")
                            .padding()
                            .background(.green)
                            .foregroundColor(.white)
                    }
                    
                }
                .cornerRadius(30)
                Spacer()
            }.padding()
            
                .navigationTitle(
                    Text(figura.nome)
                )
            
        }
    }
    
    struct FiguraDetalheView_Previews: PreviewProvider {
        static var previews: some View {
            FiguraDetalheView(figura: figuras[0])
        }
    }
}

