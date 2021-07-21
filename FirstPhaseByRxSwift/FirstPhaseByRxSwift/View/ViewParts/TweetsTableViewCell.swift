//
//  TweetsTableViewCell.swift
//  FirstPhaseByRxSwift
//
//  Created by Keisuke Horiguchi on 2021/07/20.
//

import Foundation
import UIKit

class TweetsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImg: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var practiceName: UILabel!
    @IBOutlet weak var practiceCategory: UILabel!
    @IBOutlet weak var practiceHour: UILabel!
    @IBOutlet weak var practiceType: UILabel!
    @IBOutlet weak var commentBtn: UIButton!
    @IBOutlet weak var likeBtn: UIButton!
    
    
    let commentsNo = 1
    let likesNo = 2
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state

    }
    
    func setUpTweetsTableViewCell() {
        commentBtn.setTitle(String(commentsNo), for: .normal)
        commentBtn.setImage(UIImage(systemName: "bubble.right"), for: .normal)
        likeBtn.setTitle(String(likesNo), for: .normal)
        likeBtn.setImage(UIImage(systemName: "suit.heart"), for: .normal)
    }
}
