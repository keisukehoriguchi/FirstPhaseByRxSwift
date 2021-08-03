import UIKit

final class CollectionViewHeader: UICollectionReusableView {

    @IBOutlet weak var sectionLabel: UILabel!

    static let identifier: String = "CollectionViewHeader"

    static func nib() -> UINib {
        return UINib(nibName: CollectionViewHeader.identifier, bundle: nil)
    }
}
