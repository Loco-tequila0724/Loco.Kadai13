import UIKit

struct CheckItem {
    var name: String
    var isChecked: Bool
}

class ViewController: UIViewController {
    private let fruitsName = "fruitsName"
    private let checkBool = "checkBool"
    @IBOutlet weak private var tableView: UITableView!

    private var checkItems: [CheckItem] {
        [
            CheckItem(name: "りんご", isChecked: false),
            CheckItem(name: "みかん", isChecked: true),
            CheckItem(name: "バナナ", isChecked: false),
            CheckItem(name: "パイナップル", isChecked: true)
        ]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        checkItems.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? CustomTableViewCell

        cell?.configure(item: checkItems[indexPath.row])
        return cell!
    }
}
