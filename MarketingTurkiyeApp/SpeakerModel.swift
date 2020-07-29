//
//  File.swift
//  MarketingTurkiyeApp
//
//  Created by Ahmet Mücahid BOZKURT on 22.05.2020.
//  Copyright © 2020 Ahmet Mucahid BOZKURT. All rights reserved.
//

import Foundation

class SpeakerModel {
    var name: String = ""
    var imageName: String = ""
    var title: String = ""
    init(name: String, imageName: String, title: String) {
        self.name = name
        self.imageName = imageName
        self.title = title
    }
}
