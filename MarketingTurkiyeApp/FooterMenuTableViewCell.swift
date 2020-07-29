//
//  FooterMenuTableViewCell.swift
//  MarketingTurkiyeApp
//
//  Created by Ahmet Mücahid BOZKURT on 1.06.2020.
//  Copyright © 2020 Ahmet Mucahid BOZKURT. All rights reserved.
//

import UIKit

class FooterMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var lblMenuName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let mScreenSize = UIScreen.main.bounds
        let mSeparatorHeight = CGFloat(5.0) // Change height of speatator as you want
        let mAddSeparator = UIView.init(frame: CGRect(x: 0, y: self.frame.size.height - mSeparatorHeight, width: mScreenSize.width, height: mSeparatorHeight))
        mAddSeparator.backgroundColor = UIColor.black // Change backgroundColor of separator
        self.addSubview(mAddSeparator)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setCell(model: FooterMenuModel) {
        lblMenuName.text = model.menuName
    }

}
