//
//  Document.swift
//  SceneViwer
//
//  Created by Toshihiro Goto on 2018/02/21.
//  Copyright © 2018年 Toshihiro Goto. All rights reserved.
//

import UIKit

class Document: UIDocument {
    
    override func contents(forType typeName: String) throws -> Any {
        // Encode your document with an instance of NSData or NSFileWrapper
        return Data()
    }
    
    override func load(fromContents contents: Any, ofType typeName: String?) throws {
        // Load your document from contents
    }
}

