//
//  UrlServiceTypeAssembly.swift
//  onlymen
//
//  Created by Artem Tischenko on 6/14/23.
//

import Foundation

class UrlServiceAssembly: Assembly {
    func build() -> UrlServiceType {
        let service = UrlService()
        return service
    }
}
