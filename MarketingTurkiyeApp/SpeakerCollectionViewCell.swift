//
//  File.swift
//  MarketingTurkiyeApp
//
//  Created by Ahmet Mücahid BOZKURT on 22.05.2020.
//  Copyright © 2020 Ahmet Mucahid BOZKURT. All rights reserved.
//

import UIKit

class SpeakerCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgViewSpeaker: UIImageView!
    
    func setCell(model: SpeakerModel) {
        imgViewSpeaker.image = UIImage(named: model.imageName)
    }
}
