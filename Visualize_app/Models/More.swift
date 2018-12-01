//
//  More.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 28/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import Foundation

struct More {
    
    private(set) public var moreImage: String?
    private(set) public var moreTitle: String?
    private(set) public var moreNextImage: String?
    
    init(moreImage: String, MoreTitle: String, MoreNextImage: String) {
        self.moreImage = moreImage
        self.moreTitle = MoreTitle
        self.moreNextImage = MoreNextImage
    }
    
}
