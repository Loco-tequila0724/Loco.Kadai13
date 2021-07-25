import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet weak private var checkMarkImage: UIImageView!
    @IBOutlet weak private var fruitsLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    func setCell(imageView: String, textLabel: String) {
        checkMarkImage.image = UIImage(systemName: imageView)
        checkMarkImage.tintColor = .orange
        fruitsLabel.text = textLabel
    }
}
