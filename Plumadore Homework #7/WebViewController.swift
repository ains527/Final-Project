//
//  WebViewController.swift
//  Plumadore Homework #7
//
//  Created by Ainsley Plumadore on 5/3/20.
//  Copyright © 2020 Ainsley Plumadore. All rights reserved.
//

import UIKit
import WebKit
import MessageUI

class WebViewController: UIViewController, MFMessageComposeViewControllerDelegate {
    
    
    func messageComposeViewController(_ controller: MFMessageComposeViewController, didFinishWith result: MessageComposeResult) {
    }
    

    
    @IBOutlet weak var webView: WKWebView!
    
    
    
    @IBAction func openSite(_ sender: Any) {
        
        if let url = URL(string: "https://www.setonhill.edu"){
            UIApplication.shared.open(url, options: [:])
        }
        
    }
    
    
    @IBAction func sendSMS(_ sender: Any) {
        
    let composeVC = MFMessageComposeViewController()
        composeVC.messageComposeDelegate = self
        
        //Configure the fields of the interface
        composeVC.recipients = ["2407071074"]
        composeVC.body = "Hello. This is a message being sent from the app I made."
        
        //Present the view controller modality
        if MFMessageComposeViewController.canSendText() {
            self.present(composeVC, animated: true, completion: nil)
        } else {
            print("Can't send messages.")
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Load web content
        let myURL = URL(string:"https://www.setonhill.edu")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
