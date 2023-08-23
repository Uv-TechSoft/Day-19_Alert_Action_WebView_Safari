//
//  WkWebViewViewController.swift
//  AlertAcrionWebviewSafari_Day18
//
//  Created by Imam MohammadUvesh on 26/11/21.
//

import UIKit
import WebKit

class WkWebViewViewController: UIViewController,WKNavigationDelegate
{
    //MARK: Outlets
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        webView.navigationDelegate = self
        
        if let url = URL(string: "https://www.uv-techsoft.com")
        {
            webView.load(URLRequest(url: url))
        }
        
    }
}
