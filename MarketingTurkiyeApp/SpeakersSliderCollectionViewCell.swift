//
//  SpeakersSliderCollectionViewCell.swift
//  MarketingTurkiyeApp
//
//  Created by Ahmet Mücahid BOZKURT on 1.06.2020.
//  Copyright © 2020 Ahmet Mucahid BOZKURT. All rights reserved.
//

import UIKit

class SpeakersSliderCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgViewSpeakers: UIImageView!
    @IBOutlet weak var lblSpeakersName: UILabel!
    
    func setCell(model: SpeakerModel) {
        lblSpeakersName.text = model.name
        imgViewSpeakers.image = UIImage(named: model.imageName)
    }
}
