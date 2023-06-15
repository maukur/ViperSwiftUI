//
//  PresenterProtocol.swift
//  ViperSwiftUI
//
//  Created by Artem Tischenko on 6/14/23.
//

import SwiftUI
import Combine

protocol PresenterProtocol: ObservableObject {
    var subscribers: Set<AnyCancellable> { get set }

    func bind()
    func unbind()
}

extension PresenterProtocol {
    func bind() {}
    
    func unbind() {
        subscribers.removeAll()
    }

    
}
