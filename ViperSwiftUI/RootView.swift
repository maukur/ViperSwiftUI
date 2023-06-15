//
//  ContentView.swift
//  advent.calendar
//
//  Created by Artem Tischenko on 6/14/23.
//

import SwiftUI
import UIKit

struct RootView: View {
    
    @EnvironmentObject var navigationService: NavigationService
    @EnvironmentObject var appViewBuilder: ApplicationViewFactory
    
    var body: some View {
        NavigationStack(path: $navigationService.navigation) {
            appViewBuilder.build(view: .welcome(.red))
            .navigationDestination(for: NavigationPath.self) { path in
                switch path {
                case .welcome:
                    appViewBuilder.build(view: .welcome(.blue))
                default:
                    fatalError()
                }
            }
        }
        
    }
}
