//
//  Selection.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 15/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import Foundation

struct Selection {
    
    private(set) public var selecionImage: String?
    private(set) public var selectionTitle: String?
    
    init(selectionImage: String, selectionTitle: String) {
        self.selecionImage = selectionImage
        self.selectionTitle = selectionTitle
    }
    
}
