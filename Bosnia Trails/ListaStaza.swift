//
//  ListaStaza.swift
//  Bosnia Trails
//
//  Created by Adis Mulabdic on 3/7/16.
//  Copyright © 2016 Adis Mulabdic. All rights reserved.
//

import Foundation

class ListaStaza {
    private var _imeStaze: String!
    private var _duzinaStaze: String!
    private var _visinaStaze: String!
    private var _imgId: Int!
    
    var imeStaze: String {
        return _imeStaze
    }
    
    var duzinaStaze: String {
        return _duzinaStaze
    }
    
    var visinaStaze: String {
        return _visinaStaze
    }
    
    var imgId: Int {
        return _imgId
    }
    
    init(imeStaze: String, duzinaStaze: String, visinaStaze: String, imgId: Int) {
        self._imeStaze = imeStaze
        self._duzinaStaze = duzinaStaze
        self._visinaStaze = visinaStaze
        self._imgId = imgId
    }
}