//
//  AlertItem.swift
//  ViperSwiftUI
//
//  Created by Artem Tischenko on 6/16/23.
//

import Foundation


class AlertItem: Identifiable {
    init(type: AlertType) {
        self.type = type
    }
    
    enum AlertType {
        case simple
    }
    
    var type: AlertType
}
