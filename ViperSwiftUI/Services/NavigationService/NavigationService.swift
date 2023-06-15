//
//  NavigationService.swift
//  diary.emotions
//
//  Created by Artem Tischenko on 6/14/23.
//

import Foundation
import SwiftUI

public class NavigationService: NavigationServiceType  {
     
    public let id = UUID()
    
    public static func == (lhs: NavigationService, rhs: NavigationService) -> Bool {
        lhs.id == rhs.id
    }
      
    @Published var navigation: [NavigationPath] = []
}


enum NavigationPath: Equatable, Hashable {
    case welcome(Color)
}

class StubNavigation: NavigationServiceType, ObservableObject, Equatable  {
        
    public let id = UUID()

    public static func == (lhs: StubNavigation, rhs: StubNavigation) -> Bool {
        lhs.id == rhs.id
    }
    
    
    fileprivate init() {}
    
    static var stub: any NavigationServiceType { NavigationService() }
        
    var navigation: [NavigationPath] = []
    
}

