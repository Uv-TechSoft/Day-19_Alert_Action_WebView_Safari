//
//  ViewController.swift
//  Alert,Action,WebView,Safari
//
//  Created by Yogesh Patel on 25/11/21.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func alertButtonTapped(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Alert", message: "Message", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Okay", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let delete = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        
        alertController.addAction(ok)
        alertController.addAction(cancel)
        alertController.addAction(delete)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func actionButtonTapped(_ sender: UIButton) {
        let alertController = UIAlertController(title: "Alert", message: "Message", preferredStyle: .actionSheet)
        
        let ok = UIAlertAction(title: "Okay", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let delete = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        
        alertController.addAction(ok)
        alertController.addAction(cancel)
        alertController.addAction(delete)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func buttonWebViewController(_ sender: UIButton) {
        if let wkWebViewViewController = self.storyboard?.instantiateViewController(withIdentifier: "WKWebViewViewController") as? WKWebViewViewController{
            self.navigationController?.pushViewController(wkWebViewViewController, animated: true)
        }
    }
    
    @IBAction func buttonSafariTapped(_ sender: UIButton) {
        if let url = URL(string: "https://www.google.com"){
            let safariConfiguartion = SFSafariViewController.Configuration()
            let safariController = SFSafariViewController(url: url, configuration: safariConfiguartion)
            self.present(safariController, animated: true, completion: nil)
        }
    }
}

