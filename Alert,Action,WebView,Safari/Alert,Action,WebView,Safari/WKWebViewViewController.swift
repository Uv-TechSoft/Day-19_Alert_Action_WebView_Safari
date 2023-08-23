//
//  WKWebViewViewController.swift
//  Alert,Action,WebView,Safari
//
//  Created by Yogesh Patel on 25/11/21.
//

import UIKit
import WebKit

class WKWebViewViewController: UIViewController,WKNavigationDelegate
{

    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        webView.navigationDelegate = self
        
        if let url = URL(string: "https://www.lenstoapp.com")
        {
            webView.load(URLRequest(url: url))
        }
    }
}
