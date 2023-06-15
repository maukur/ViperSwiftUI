//
//  WelcomeRouter.swift
//  ViperExample
//
//  Created by Artem Tischenko on 6/14/23.
//

import Foundation

final class WelcomeRouter: WelcomeViewRouterProtocol {
    
    var navigation: any NavigationServiceType
    
    init(navigation: any NavigationServiceType)
    {
        self.navigation = navigation
    }
    
    func navigateToHome() {
        navigation.navigation.append(.welcome(.red))
    }
    
    
}


