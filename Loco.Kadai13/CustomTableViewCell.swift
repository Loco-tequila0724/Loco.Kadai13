import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak private var checkMarkImage: UIImageView!
    @IBOutlet weak private var fruitsLabel: UILabel!
    func setCell(imageName: String, checkBool: Bool, textLabel: String) {
        if checkBool == true {
            checkMarkImage.image = UIImage(systemName: imageName)
        } else {
            checkMarkImage.isHidden = true
        }

        checkMarkImage.tintColor = .orange
        fruitsLabel.text = textLabel
    }
}
