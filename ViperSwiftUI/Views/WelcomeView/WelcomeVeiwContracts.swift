//
//  Contracts.swift
//  ViperExample
//
//  Created by Artem Tischenko on 6/14/23.
//

import SwiftUI


protocol WelcomeViewRouterProtocol: RouterProtocol {
    func navigateWelcome()
    func navigateToHome()
}

protocol WelcomePresenterProtocol: PresenterProtocol {
    var color: Color { get }
    var count: Int { get }
    var isOn: Bool { get set }
    var alert: AlertItem? { get set }
    func navigateToHome()
    func navigateWelcome()
    func openUrl(url:String) 
    func increase()
    func decrease()
    func isToggle()
    func alert(for item: AlertItem) -> Alert
    func showSimpleAlert()
}


protocol WelcomeInteractorProtocol: InteractorProtocol {
    func openUrl(url:String) 
}
