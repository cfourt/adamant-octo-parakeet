//
//  RecordedAudio.swift
//  Pitch Perfect (again)
//
//  Created by Connor Fourt on 10/26/15.
//  Copyright © 2015 Connor Fourt. All rights reserved.
//

import Foundation


class RecordedAudio: AnyObject {
    var filePathUrl: NSURL!
    var title: String!
    
    init(filePathUrl: NSURL, title: String) {
        self.filePathUrl = filePathUrl
        self.title = title
        
    }
}