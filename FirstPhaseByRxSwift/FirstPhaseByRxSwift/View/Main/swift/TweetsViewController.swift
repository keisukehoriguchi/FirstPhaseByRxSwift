//
//  TweetsViewController.swift
//  FirstPhaseByRxSwift
//
//  Created by Keisuke Horiguchi on 2021/07/19.
//

import Foundation
import UIKit

class TweetsViewController: UIViewController {
    
    @IBOutlet weak var tweesTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewSetUp()
    }
    
    
    func viewSetUp() {
        tweesTableView.register(UINib(nibName: "TweetsTableViewCell", bundle: nil), forCellReuseIdentifier: "tweetsCell")
        tweesTableView.delegate = self
        tweesTableView.dataSource = self
    }
    
    @IBAction func profileAndSettingClicked(_ sender: Any) {
    }
    
}

extension TweetsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tweesTableView.dequeueReusableCell(withIdentifier: "tweetsCell") as! TweetsTableViewCell
        return cell
    }
    
}
