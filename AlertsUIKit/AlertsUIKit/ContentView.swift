//
//  ContentView.swift
//  AlertsUIKit
//
//  Created by Jose Ramos on 29/3/26.
//

import SwiftUI

struct ContentView: View {
    // Esta variable controla qué alerta queremos disparar
    @State private var selectedAlert: AlertTrigger? = nil

    var body: some View {
        VStack(spacing: 20) {
            Text("Alertas en UIKit")
                .font(.title2).bold()

            // Botones de SwiftUI
            Button("Alerta Simple") { selectedAlert = .simple }
                .buttonStyle(.bordered)
            
            Button("Opciones Críticas") { selectedAlert = .options }
                .buttonStyle(.bordered)
                .foregroundColor(.red)

            Button("Menú (Action Sheet)") { selectedAlert = .sheet }
                .buttonStyle(.borderedProminent)

            // La representación de UIKit (invisible pero funcional)
            // La metemos en un frame de 1x1 para que no ocupe espacio visual,
            // pero que siga "viva" para mostrar las alertas.
            MyAlertViewControllerRepresentation(activeAlert: $selectedAlert)
                .frame(width: 1, height: 1)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
