//
//  AlertViewController.swift
//  AlertsUIKit
//
//  Created by Jose Ramos on 29/3/26.
//

//import Foundation
import UIKit
 
class AlertViewController: UIViewController {
 
    // ALERTA BÁSICA UIKIT (UIAlertController)
    func showSimpleAlert() {
        let alert = UIAlertController(title: "Hola", message: "Este es UIKit", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
 
    // ALERTA CON MÚLTIPLES OPCIONES
    func showOptionsAlert() {
        let alert = UIAlertController(title: "Configuración", message: "Elige una opción", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Guardar", style: .default, handler: { _ in print("Guardado")
        }))
        alert.addAction(UIAlertAction(title: "Salir", style: .destructive))
        alert.addAction(UIAlertAction(title: "Cancelar", style: .cancel))
        self.present(alert, animated: true)
    }
 
    // ACTION SHEET (Menú desde abajo)
    // Muy común para menús de compartir o fotos.
    func showActionSheet() {
        let actionSheet = UIAlertController(title: "Fotos", message: "Elige origen", preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Cámara", style: .default))
        actionSheet.addAction(UIAlertAction(title: "Galería", style: .default))
        actionSheet.addAction(UIAlertAction(title: "Cancelar", style: .cancel))
         
        // Necesario para evitar crash en iPad
        if let popover = actionSheet.popoverPresentationController {
            popover.sourceView = self.view
        }
         
        self.present(actionSheet, animated: true)
    }
}
