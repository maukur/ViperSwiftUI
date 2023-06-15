import SwiftUI
import Combine


final class WelcomePresenter: WelcomePresenterProtocol {
    
    var subscribers: Set<AnyCancellable> = []
    var router: WelcomeViewRouterProtocol
    var interactor: WelcomeInteractorProtocol
    
    @Published var color: Color = .accentColor
    @Published var count: Int = 0
    @Published var isOn: Bool = false
    @Published var alert: AlertItem?

    init(router: WelcomeViewRouterProtocol,
         interactor: WelcomeInteractorProtocol) {
        self.router = router
        self.interactor = interactor
        bind()
    }
    
    func bind() {
        self.$isOn
            .sink { _ in  self.isToggle() }
            .store(in: &subscribers)
    }
    
    func increase() {
        count = count + 1
        color = .green
    }
    
    func decrease() {
        count = count - 1
        color = .red
    }

    
    func navigateToHome() {
        router.navigateToHome()
    }
    
    func navigateWelcome() {
        router.navigateWelcome()
    }
    
    func openUrl(url:String) {
        interactor.openUrl(url: url)
    }
    
    func isToggle() {
        if isOn {
            color = .yellow
        } else {
            color = .brown
        }
    }
    
    func alert(for item: AlertItem)-> Alert {
        switch item.type {
        default:
            return Alert(title: Text("Simple Alert"))
        }
    }
    
    func showSimpleAlert() {
        alert = AlertItem(type: .simple)
    }
     
}
