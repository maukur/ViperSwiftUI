//
//  WelcomeView.swift
//  ViperExample
//
//  Created by Artem Tischenko on 6/14/23.
//

import SwiftUI

struct WelcomeView: View {
    
    @ObservedObject var presenter: WelcomePresenter
    
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
                presenter.navigateToHome()
            }
            .buttonStyle(.plain)
            .background(presenter.color)
            Button("Open URL") {
                presenter.openUrl(url: "https://github.com/maukur")
            }
            .onChange(of: presenter.isOn) { newValue in
                presenter.isToggle()
            }
        }
       
    }
    
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationViewFactory.stub.build(view: .welcome(.red))
    }
}


