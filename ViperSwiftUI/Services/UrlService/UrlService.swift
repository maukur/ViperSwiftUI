//
//  UrlService.swift
//  onlymen
//
//  Created by Artem Tischenko on 6/14/23.
//

import UIKit

class UrlService: UrlServiceType {
    func didRequestOpenUrl(urlString : String) {
        guard let url = URL(string: urlString) else {
          return //be safe
        }

        if #available(iOS 10.0, *) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        } else {
            UIApplication.shared.openURL(url)
        }
    }
    
    
}
