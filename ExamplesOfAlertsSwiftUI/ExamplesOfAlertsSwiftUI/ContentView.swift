//
//  ContentView.swift
//  ExamplesOfAlertsSwiftUI
//
//  Created by Jose Ramos on 29/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView { // Se usa NavigationView por compatibilidad con Big Sur
            List {
                Section(header: Text("Alertas Simples")) {
                    BasicAlertView()
                    ErrorAlertView()
                }
                
                Section(header: Text("Confirmación y Opciones")) {
                    ConfirmationAlertView()
                    MultiButtonAlertView()
                }
                
                Section(header: Text("Entradas y Menús")) {
                    TextFieldAlertView()
                    ActionSheetView()
                }
            }
            .navigationTitle("Ejemplos de Alertas")
            .listStyle(InsetGroupedListStyle()) // Estilo moderno de tarjetas
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
