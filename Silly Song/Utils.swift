//
//  Utils.swift
//  Silly Song
//
//  Created by Dane Miller on 6/10/17.
//  Copyright © 2017 Dane Miller. All rights reserved.
//

import Foundation


func customizeTemplate(name: String, template : String) {
    // TODO
    print(shortNameFromName(name: name))
}


func shortNameFromName(name : String) -> String {
    
    return name.substring(from: name.index(after: name.startIndex))
    
}
