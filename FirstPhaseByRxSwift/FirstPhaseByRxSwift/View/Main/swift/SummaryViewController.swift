//
//  SummaryViewController.swift
//  FirstPhaseByRxSwift
//
//  Created by Keisuke Horiguchi on 2021/07/19.
//

import Foundation
import UIKit

class SummaryViewController: UIViewController {
    
    @IBOutlet weak var termSegment: UISegmentedControl!
    @IBOutlet weak var summaryGraphView: UIView!
    @IBOutlet weak var calendarView: UIView!
    @IBOutlet weak var ratioGraphView: UIView!
    
    //practiceTypeはそれぞれのグラフで割合示す。
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.red
    }

}
