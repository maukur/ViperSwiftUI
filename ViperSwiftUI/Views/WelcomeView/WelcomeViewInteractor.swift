//
//  WelcomeViewInteractor.swift
//  ViperExample
//
//  Created by Artem Tischenko on 6/14/23.
//

import Foundation

final class WelcomeViewInteractor: WelcomeInteractorProtocol {
    
    let urlService: UrlServiceType
    
    init(urlService: UrlServiceType) {
        self.urlService = urlService
    }
    
    func openUrl(url:String) {
        urlService.didRequestOpenUrl(urlString: url)
    }
}
