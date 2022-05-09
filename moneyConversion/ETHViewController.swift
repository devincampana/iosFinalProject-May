//
//  ETHViewController.swift
//  moneyConversion
//
//  Created by Devin Campaña on 5/2/22.
//

import Foundation
import UIKit
import WebKit

class ETHViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet var webView: WKWebView!
    
    let sampleURL = "https://www.coindesk.com/price/ethereum/"
        
        
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

