//
//  MinhaColecaoView.swift
//  figurinhas
//
//  Created by Carlos Henrique on 27/09/23.
//

import SwiftUI

struct MinhaColecaoView: View {
    @EnvironmentObject var minhaColecao: MinhaColecao
    var body: some View {
        if minhaColecao.figuras.count == 0 {
            Text("Você não tem figurinhas na sua colecão")
        } else {
            List(minhaColecao.figuras) { figura in
                NavigationLink {
                    FiguraDetalheView(figura: figura)
                } label: {
                    FigurasLinhaView(figura: figura, cor: .green)
                    
                }
            }
            .navigationTitle("Minha colecão")
        }
    }
}

struct MinhaColecaoView_Previews: PreviewProvider {
    static var previews: some View {
        MinhaColecaoView()
    }
}
