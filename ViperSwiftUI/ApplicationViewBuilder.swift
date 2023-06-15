//
//  ApplicationViewBuilder.swift
//  advent.calendar
//
//  Created by Artem Tischenko on 6/14/23.
//

import SwiftUI

@MainActor
final class ApplicationViewFactory : Assembly, ObservableObject {
    
    
    required init(container: Container) {
        super.init(container: container)
    }
   
   
    @ViewBuilder
    func build(view: Views) -> some View {
        switch view {
        case .welcome(let color):
            buildWelcome(color:color)
        default:
            EmptyView()
        }
    }
    
    
    @ViewBuilder
    fileprivate func buildWelcome(color:Color) -> some View {
        container.resolve(WelcomeViewAssembly.self).build()
    }
}


enum Views {
    case welcome(Color)
    case home
    case item(String)
}




extension ApplicationViewFactory {
    
    static var container: DependencyContainer = {
        let factory = AssemblyFactory()
        let container = DependencyContainer(assemblyFactory: factory)
        
        container.apply(UrlServiceAssembly.self)
        container.apply(WelcomeViewAssembly.self)
        container.apply(NavigationAssembly.self)
      
        return container
    }()
    
    static var stub: ApplicationViewFactory {
        return ApplicationViewFactory(
            container: container
        )
    }
}
