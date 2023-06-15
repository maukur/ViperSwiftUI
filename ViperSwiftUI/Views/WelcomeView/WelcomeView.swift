//
//  WelcomeView.swift
//  ViperExample
//
//  Created by Artem Tischenko on 6/14/23.
//

import SwiftUI

struct WelcomeView<T: WelcomePresenterProtocol>: View {
    
    init(presenter: T) {
        self.presenter = presenter
    }
    
    @ObservedObject var presenter: T
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    presenter.increase()
                } label: {
                    Image(systemName: "plus")
                }
                Text("Score: \(presenter.count)")
                Button {
                    presenter.decrease()
                } label: {
                    Image(systemName: "minus")
                }
            }
            
            HStack {
                Spacer()
                Toggle("Test", isOn: $presenter.isOn)
                    .frame(width: 100)
                Spacer()
            }
            
            Button("Navigate To Next") {
                presenter.navigateWelcome()
            }
            .buttonStyle(.plain)
            .background(presenter.color)
            Button("Navigate To Home") {
                presenter.navigateToHome()
            }
            Button("Open URL") {
                presenter.openUrl(url: "https://github.com/maukur")
            }
            Button("Show Alert") {
                presenter.showSimpleAlert()
            }
        }.alert(item: $presenter.alert, content: presenter.alert(for:))

    }
    
    
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationViewFactory.stub.build(view: .welcome(.red))
    }
}


