

import SwiftUI

@main
class ViperSwiftUIApp: App {
    
    @ObservedObject var appViewBuilder: ApplicationViewFactory
    @ObservedObject var navigationService: NavigationService
    
    
    required init() {
        
        
        
        let container: DependencyContainer = {
            let factory = AssemblyFactory()
            let container = DependencyContainer(assemblyFactory: factory)
            
            container.apply(UrlServiceAssembly.self)
            container.apply(NavigationAssembly.self)
            
            container.apply(WelcomeViewAssembly.self)
          
            return container
        }()

        navigationService = container.resolve(NavigationAssembly.self).build() as! NavigationService
        appViewBuilder = ApplicationViewFactory(container: container)
        
    }
    
    
    
    var body: some Scene {
        WindowGroup {
            RootView()
                .environmentObject(navigationService)
                .environmentObject(appViewBuilder)
        }
    }
    
}
