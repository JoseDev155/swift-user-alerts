//
//  AlertsView.swift
//  AlertsSwiftUI
//
//  Created by Jose Ramos on 29/3/26.
//

//import Foundation
import SwiftUI
 
// ALERTA DE INFORMACIÓN
// Simple mensaje con botón de cierre.
struct AlertInformative: View {
    @State private var showing = false
    var body: some View {
        Button("Alerta Informativa") { showing = true }
        .alert("¡Logrado!", isPresented: $showing) {
            Button("Cerrar", role: .cancel) { }
        } message: { Text("El proceso terminó con éxito.") }
    }
}
 
//ALERTA DE DESTRUCCIÓN
// Botón rojo para acciones críticas.
struct AlertDestructive: View {
    @State private var showing = false
    var body: some View {
        Button("Eliminar Cuenta") { showing = true }
        .alert("¿Borrar todo?", isPresented: $showing) {
            Button("Eliminar", role: .destructive) { /* Acción */ }
            Button("Cancelar", role: .cancel) { }
        }
    }
}
 
//ALERTA CON INPUT DE TEXTO
// Recolectar datos rápidos del usuario.
struct AlertInput: View {
    @State private var showing = false
    @State private var text = ""
    var body: some View {
        Button("Ingresar Código") { showing = true }
        .alert("Seguridad", isPresented: $showing) {
            TextField("Código", text: $text)
            Button("Enviar") { print(text) }
            Button("Cancelar", role: .cancel) { }
        }
    }
}
