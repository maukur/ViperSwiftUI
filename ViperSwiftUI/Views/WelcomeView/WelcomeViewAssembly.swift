//
//  WelcomeViewAssembly.swift
//  ViperExample
//
//  Created by Artem Tischenko on 6/14/23.
//

import SwiftUI

final class WelcomeViewAssembly: Assembly {
    
    func build() -> some View {
        
        let urlService = container.resolve(UrlServiceAssembly.self).build()
        let navigation = container.resolve(NavigationAssembly.self).build()
        
        let router = WelcomeRouter(navigation: navigation)

        let interactor = WelcomeViewInteractor(urlService: urlService)
        let presenter = WelcomePresenter(router: router, interactor: interactor)
        
        let view = WelcomeView(presenter: presenter)
        return view
    }
}
 

