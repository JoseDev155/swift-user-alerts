//
//  AlertTrigger.swift
//  AlertsUIKit
//
//  Created by Jose Ramos on 29/3/26.
//

//import Foundation

enum AlertTrigger: Identifiable {
    case simple, options, sheet
    var id: Int { hashValue } // Para que SwiftUI lo identifique
}
