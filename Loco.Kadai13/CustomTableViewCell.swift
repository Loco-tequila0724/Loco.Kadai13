import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak private var checkMarkImageView: UIImageView!
    @IBOutlet weak private var fruitsLabel: UILabel!

    func configure(item: CheckItem) {
        if item.isChecked {
            checkMarkImageView.image = UIImage(systemName: "checkmark")
        } else {
            checkMarkImageView.image = nil
        }

        checkMarkImageView.tintColor = .orange
        fruitsLabel.text = item.name
    }
}
