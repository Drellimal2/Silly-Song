//
//  Utils.swift
//  Silly Song
//
//  Created by Dane Miller on 6/10/17.
//  Copyright © 2017 Dane Miller. All rights reserved.
//

import Foundation

let bananaFanaTemplate = [
    "♪♪♪<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
    "Banana Fana Fo F<SHORT_NAME>",
    "Me My Mo M<SHORT_NAME>",
    "<FULL_NAME>♪♪♪"].joined(separator: "\n")


func customizeTemplate(name: String, template : String) -> String {
    // TODO
    let shortName = shortNameFromName(name: name)
    let song = template.replacingOccurrences(of: "<FULL_NAME>", with: name).replacingOccurrences(of: "<SHORT_NAME>", with: shortName)
    return song
}




func shortNameFromName(name : String) -> String {
    let lowercaseName = name.substring(from: name.index(after :name.startIndex)).lowercased()
//    let vowelSet = CharacterSet.init(charactersIn: "aeiou")
//    return lowercaseName.substring(from: lowercaseName.index(of: "a"))
    return lowercaseName
    
}


