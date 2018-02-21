//
//  DocumentViewController.swift
//  SceneViwer
//
//  Created by Toshihiro Goto on 2018/02/21.
//  Copyright © 2018年 Toshihiro Goto. All rights reserved.
//

import UIKit
import SceneKit

class DocumentViewController: UIViewController {
    
    @IBOutlet weak var documentNameLabel: UILabel!
    @IBOutlet weak var scnView: SCNView!
    
    var document: UIDocument?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.scnView.allowsCameraControl = true
        
        // Access the document
        document?.open(completionHandler: { (success) in
            if success {
                // Display the content of the document, e.g.:
                self.documentNameLabel.text = self.document?.fileURL.lastPathComponent
                
                self.scnView.scene = try? SCNScene(url: (self.document?.fileURL)!, options: [:])
            } else {
                // Make sure to handle the failed import appropriately, e.g., by presenting an error message to the user.
            }
        })
    }
    
    @IBAction func dismissDocumentViewController() {
        dismiss(animated: true) {
            self.document?.close(completionHandler: nil)
        }
    }
}
