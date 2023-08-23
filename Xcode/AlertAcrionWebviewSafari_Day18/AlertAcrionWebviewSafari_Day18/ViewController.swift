//
//  ViewController.swift
//  AlertAcrionWebviewSafari_Day18
//
//  Created by Imam MohammadUvesh on 26/11/21.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func alertTapped(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Alert", message: "Message", preferredStyle: .alert)
        let ok = UIAlertAction(title: "Okay", style: .default)
        let delete = UIAlertAction(title: "Delete", style: .destructive)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertController.addAction(ok)
        alertController.addAction(delete)
        alertController.addAction(cancel)
        
        self.present(alertController, animated: true)
    }
    
    @IBAction func actionTapped(_ sender: UIButton) {
        let alertAction = UIAlertController(title: "Actions", message: "Message", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "Okay", style: .default, handler: nil)
        let delete = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertAction.addAction(ok)
        alertAction.addAction(delete)
        alertAction.addAction(cancel)
        
        self.present(alertAction, animated: true, completion: nil)
    }
    
    @IBAction func webViewTapped(_ sender: UIButton) {
        print("WebView Tapped")
       if let wkWebViewViewController = self.storyboard?.instantiateViewController(withIdentifier: "WkWebViewViewController") as? WkWebViewViewController
        {
           self.navigationController?.pushViewController(wkWebViewViewController, animated: true)
        }
        
    }
    
    @IBAction func safariTapped(_ sender: UIButton) {
        if let url = URL(string: "https://www.uv-techsoft.com")
        {
            let safariConfiguration = SFSafariViewController.Configuration()
            let safariController = SFSafariViewController(url: url, configuration: safariConfiguration)
            self.present(safariController, animated: true, completion: nil)
        }
        
    }
    
    
    
}

