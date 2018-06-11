import UIKit

class SettingsViewController: UIViewController {

    let viewDelegate: SettingsViewDelegate

    init(viewDelegate: SettingsViewDelegate) {
        self.viewDelegate = viewDelegate

        super.init(nibName: String(describing: SettingsViewController.self), bundle: nil)

        tabBarItem = UITabBarItem(title: "settings.tab_bar_item".localized, image: UIImage(named: "settings.tab_bar_item"), tag: 0)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "settings.title".localized
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }

}