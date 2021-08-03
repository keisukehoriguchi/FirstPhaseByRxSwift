//
//  RecordViewController.swift
//  FirstPhaseByRxSwift
//
//  Created by Keisuke Horiguchi on 2021/07/19.
//

import Foundation
import UIKit

class RecordViewController: UIViewController {

    @IBOutlet weak var recordCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.green
        viewSetUp()
    }

    private func viewSetUp() {
        recordCollectionView.register(UINib(nibName: "RecordCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "RecordsCell")
        recordCollectionView.delegate = self
        recordCollectionView.dataSource = self
    }


}

extension RecordViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = recordCollectionView.dequeueReusableCell(withReuseIdentifier: "RecordsCell", for: indexPath) as! RecordCollectionViewCell
        return cell
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }



}
