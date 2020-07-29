//
//  ViewController.swift
//  MarketingTurkiyeApp
//
//  Created by Ahmet Mücahid BOZKURT on 20.05.2020.
//  Copyright © 2020 Ahmet Mucahid BOZKURT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var speakerArray = [SpeakerModel]()
    var footerMenuArray = [FooterMenuModel]()
    
    @IBOutlet weak var collectionViewSpeakers: UICollectionView!
    @IBOutlet weak var collectionViewAllSpeakers: UICollectionView!
    @IBOutlet weak var tableViewFooterMenu: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let speaker1 = SpeakerModel(name: "Ahmet", imageName: "speaker1", title: "Title 1 Deneme")
        let speaker2 = SpeakerModel(name: "Mucahid", imageName: "speaker1", title: "Title 2 Deneme")
        let speaker3 = SpeakerModel(name: "Bozkurt", imageName: "speaker1", title: "Title 3 Deneme")
        speakerArray.append(contentsOf: [speaker1, speaker2, speaker3])
        collectionViewSpeakers.reloadData()
        collectionViewAllSpeakers.reloadData()
        
        let menu1 = FooterMenuModel(menuName: "Hakkımızda")
        let menu2 = FooterMenuModel(menuName: "Sponsorlar")
        let menu3 = FooterMenuModel(menuName: "Geçmişte XCO")
        let menu4 = FooterMenuModel(menuName: "Lokasyon")
        let menu5 = FooterMenuModel(menuName: "İletişim")
        footerMenuArray.append(contentsOf: [menu1, menu2, menu3, menu4, menu5])
        tableViewFooterMenu.reloadData()
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return speakerArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionViewSpeakers {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SpeakerCollectionViewCell", for: indexPath) as? SpeakerCollectionViewCell else {
                return UICollectionViewCell()
            }
            cell.setCell(model: speakerArray[indexPath.row])
            return cell
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SpeakersSliderCollectionViewCell", for: indexPath) as? SpeakersSliderCollectionViewCell else {
                return UICollectionViewCell()
            }
            cell.setCell(model: speakerArray[indexPath.row])
            return cell
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.collectionViewSpeakers {
            return CGSize(width: UIScreen.main.bounds.width, height: 500)
        } else {
            return CGSize(width: 50, height: 50)
        }
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return footerMenuArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FooterMenuTableViewCell", for: indexPath) as? FooterMenuTableViewCell else {
            return UITableViewCell()
        }
        cell.setCell(model: footerMenuArray[indexPath.row])
        return cell
    }
    
}

