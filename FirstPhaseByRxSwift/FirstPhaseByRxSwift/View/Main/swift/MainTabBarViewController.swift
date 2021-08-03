//
//  MainTabViewController.swift
//  FirstPhaseByRxSwift
//
//  Created by Keisuke Horiguchi on 2021/07/19.
//

import Foundation
import UIKit

class MainTabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initBar()
    }
    
    func initBar() {
        let tweetsVC = TweetsViewController()
        tweetsVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        let summaryVC = SummaryViewController()
        summaryVC.tabBarItem = UITabBarItem(tabBarSystemItem: .featured, tag: 1)
        
            
        let flowLayout = UICollectionViewFlowLayout()
        let margin: CGFloat = 3.0
        flowLayout.itemSize = CGSize(width: 100.0, height: 100.0)
        flowLayout.minimumInteritemSpacing = margin
        flowLayout.minimumLineSpacing = margin
        flowLayout.sectionInset = UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
        let recordVC = RecordViewController()
        recordVC.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: 2)
        
        setViewControllers([tweetsVC, summaryVC, recordVC], animated: false)
    }
    
    
    
}
