//
//  BTCViewController.swift
//  moneyConversion
//
//  Created by Devin Campana on 5/9/22.
//

import Foundation
import WebKit
import UIKit

class BTCViewController: UIViewController, WKNavigationDelegate {
    
    
    @IBOutlet var webView: WKWebView!
    
    let sampleURL = "https://www.coindesk.com/price/bitcoin"
        
        
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
