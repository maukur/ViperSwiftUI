//
//  UrlServiceType.swift
//  onlymen
//
//  Created by Artem Tischenko on 6/14/23.
//

import Foundation

protocol NavigationServiceType: ObservableObject {
    var navigation:[NavigationPath] { get set }
}
