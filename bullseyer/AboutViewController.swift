//
//  AboutViewController.swift
//  bullseyer
//
//  Created by Juan Carlos Orellana Aravena on 4/12/19.
//  Copyright © 2019 Juan Carlos Orellana Aravena. All rights reserved.
//

import UIKit
import WebKit


class AboutViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    /*
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let htmlPath = Bundle.main.path(forResource: "BullsEye", ofType: "html") {
            let url = URL(fileURLWithPath: htmlPath)
            let request = URLRequest(url: url)
            webView.load(request)
        }
        
    }
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }

}
