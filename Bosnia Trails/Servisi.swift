//
//  Servisi.swift
//  Bosnia Trails
//
//  Created by Adis Mulabdic on 3/7/16.
//  Copyright © 2016 Adis Mulabdic. All rights reserved.
//

import Foundation

class Servisi {
    private var _nazivServisa: String!
    private var _gradServisa: String!
    private var _imgId: String!
    
    var nazivServisa: String {
        return _nazivServisa
    }
    
    var gradServisa: String {
        return _gradServisa
    }
    
    var imgId: String {
        return _imgId
    }
    
    init(nazivServisa: String, gradServisa: String, imgId: String) {
        self._nazivServisa = nazivServisa
        self._gradServisa = gradServisa
        self._imgId = imgId
    }
}