import UIKit

class ViewController: UIViewController {
    private let fruitsName = "fruitsName"
    private let checkBool = "checkBool"
    @IBOutlet weak private var tableView: UITableView!

    private var fruits: [[String: Any]] {
        [
            [fruitsName: "りんご", checkBool: false],
            [fruitsName: "みかん", checkBool: true],
            [fruitsName: "バナナ", checkBool: false],
            [fruitsName: "パイナップル", checkBool: true]
        ]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? CustomTableViewCell

        guard let checkBool = fruits[indexPath.row][checkBool] as? Bool else { return cell! }
        guard let textFruitsName = fruits[indexPath.row][fruitsName] as? String else { return cell! }

        cell?.setCell(imageName: "checkmark", checkBool: checkBool, textLabel: textFruitsName)
        return cell!
    }
}
