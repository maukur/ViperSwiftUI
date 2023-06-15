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
    func navigateToHome()
    func navigateWelcome() 
    func openUrl(url:String) 
    var color: Color { get }
    var count: Int { get }
    func increase()
    func decrease()
    func isToggle() 
}


protocol WelcomeInteractorProtocol: InteractorProtocol {
    func openUrl(url:String) 
}
