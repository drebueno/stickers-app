//
//  figurinhasApp.swift
//  figurinhas
//
//  Created by Carlos Henrique on 25/09/23.
//

import SwiftUI

@main
struct figurinhasApp: App {
    var body: some Scene {
        let minhaColecao = MinhaColecao()
        WindowGroup {
            ContentView()
                .environmentObject(minhaColecao)
        }
    }
}

