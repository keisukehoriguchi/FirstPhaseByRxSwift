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
        let recordVC = RecordViewController()
        recordVC.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: 2)
        
        setViewControllers([tweetsVC, summaryVC, recordVC], animated: false)
    }
    
    
    
}
