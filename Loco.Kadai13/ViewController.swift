import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    private let fruits = ["りんご", "みかん", "バナナ", "パイナップル"]
    @IBOutlet weak private var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fruits.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell") as? CustomTableViewCell

        cell!.setCell(imageView: "checkmark", textLabel: fruits[indexPath.row])
        return cell!
    }
}
