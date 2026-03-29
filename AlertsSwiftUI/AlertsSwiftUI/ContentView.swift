//
//  ContentView.swift
//  AlertsSwiftUI
//
//  Created by Jose Ramos on 29/3/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Gestión de Procesos")) {
                    AlertInformative()
                }
                
                Section(header: Text("Acciones Críticas")) {
                    AlertDestructive()
                }
                
                Section(header: Text("Entrada de Datos")) {
                    AlertInput()
                }
            }
            .navigationTitle("Manual de Alertas")
            .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
