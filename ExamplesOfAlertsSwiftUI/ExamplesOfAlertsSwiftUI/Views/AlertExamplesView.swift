//
//  AlertExamplesView.swift
//  ExamplesOfAlertsSwiftUI
//
//  Created by Jose Ramos on 29/3/26.
//

//import Foundation
import SwiftUI
 
// ALERTA BÁSICA (INFORMATIVA)
struct BasicAlertView: View {
    @State private var showAlert = false
     
    var body: some View {
        Button("Mostrar Alerta Básica") {
            showAlert = true
        }
        .alert("Operación Exitosa", isPresented: $showAlert) {
            Button("Entendido", role: .cancel) { }
        } message: {
            Text("Tu archivo ha sido guardado correctamente.")
        }
    }
}
 
// ALERTA DE CONFIRMACIÓN (DOS OPCIONES)
struct ConfirmationAlertView: View {
    @State private var showAlert = false
     
    var body: some View {
        Button("Eliminar Elemento") {
            showAlert = true
        }
        .alert("¿Estás seguro?", isPresented: $showAlert) {
            Button("Eliminar", role: .destructive) {
                print("Elemento eliminado")
            }
            Button("Cancelar", role: .cancel) { }
        } message: {
            Text("Esta acción no se puede deshacer.")
        }
    }
}
 
// ALERTA CON MÚLTIPLES BOTONES
struct MultiButtonAlertView: View {
    @State private var showAlert = false
     
    var body: some View {
        Button("Opciones de Guardado") {
            showAlert = true
        }
        .alert("¿Cómo quieres guardar?", isPresented: $showAlert) {
            Button("PDF") { print("Guardando como PDF...") }
            Button("JPG") { print("Guardando como JPG...") }
            Button("Cancelar", role: .cancel) { }
        }
    }
}
 
// ALERTA CON ENTRADA DE TEXTO (TEXTFIELD)
struct TextFieldAlertView: View {
    @State private var showAlert = false
    @State private var username = ""
     
    var body: some View {
        Button("Cambiar Nombre") {
            showAlert = true
        }
        .alert("Usuario", isPresented: $showAlert) {
            TextField("Escribe tu nombre", text: $username)
            Button("OK") { print("Nuevo nombre: \(username)") }
            Button("Cancelar", role: .cancel) { }
        } message: {
            Text("Por favor, ingresa tu nuevo nombre de usuario.")
        }
    }
}
 
// ALERTA BASADA EN UN ERROR (ESTRUCTURA DE DATOS)
struct ErrorAlertView: View {
    @State private var errorOccurred = false
     
    var body: some View {
        Button("Simular Error de Red") {
            errorOccurred = true
        }
        .alert("Error de Conexión", isPresented: $errorOccurred) {
            Button("Reintentar") { /* Lógica de reintento */ }
            Button("OK", role: .cancel) { }
        } message: {
            Text("No se pudo conectar al servidor. Revisa tu internet.")
        }
    }
}
 
//  ACTION SHEET (ALERTA DE ESTILO MENÚ)
struct ActionSheetView: View {
    @State private var showSheet = false
     
    var body: some View {
        Button("Abrir Menú de Acciones") {
            showSheet = true
        }
        .confirmationDialog("Selecciona una red social", isPresented: $showSheet, titleVisibility: .visible) {
            Button("Facebook") { }
            Button("Instagram") { }
            Button("Twitter") { }
            Button("Cancelar", role: .cancel) { }
        }
    }
}
