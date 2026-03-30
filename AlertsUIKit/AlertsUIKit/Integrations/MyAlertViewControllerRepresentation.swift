//
//  MyAlertViewControllerRepresentation.swift
//  AlertsUIKit
//
//  Created by Jose Ramos on 29/3/26.
//

//import Foundation
import SwiftUI
import UIKit

struct MyAlertViewControllerRepresentation: UIViewControllerRepresentable {
    // El "puente": SwiftUI pasará qué alerta mostrar aquí
    @Binding var activeAlert: AlertTrigger?

    func makeUIViewController(context: Context) -> AlertViewController {
        return AlertViewController()
    }

    func updateUIViewController(_ uiViewController: AlertViewController, context: Context) {
        // Si hay una alerta activa, le pedimos a UIKit que la muestre
        guard let alert = activeAlert else { return }

        switch alert {
        case .simple:
            uiViewController.showSimpleAlert()
        case .options:
            uiViewController.showOptionsAlert()
        case .sheet:
            uiViewController.showActionSheet()
        }

        // IMPORTANTE: Reseteamos el estado a nil después de mostrarla
        // para que no se repita en el próximo redibujado.
        DispatchQueue.main.async {
            activeAlert = nil
        }
    }
}
