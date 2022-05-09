//
//  ViewController1.swift
//  moneyConversion
//
//  Created by Devin Campaña on 5/2/22.
//

import Foundation
import UIKit
import WebKit

class ViewController1: UIViewController, WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!
    
    let sampleURL = "https://finance.yahoo.com/currencies/?guccounter=1&guce_referrer=aHR0cHM6Ly93d3cuZ29vZ2xlLmNvbS8&guce_referrer_sig=AQAAAJSSlSi1Ergthy528asR_KDPZvfFFRKCEkjeXk_bD9MWJALHVlUulsO0xXYmrGHx0AD-WBYZC6SKrZj1FUYDHaee8kK3J9kRk7qcNabnwo3y6GR2kBnPQBkMQEqm_4nkeYWLSU2WDhn5xuSjzzAwRgx6C0C_PziRFEDAO8mt6rVj"
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            self.sendRequest(urlString: sampleURL)
        }
        
        func sendRequest(urlString: String) {
            let myURL = URL(string: urlString)
            let myRequest = URLRequest(url: myURL!)
            webView.load(myRequest)
            
        }

   
    
    
}



