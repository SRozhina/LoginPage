import UIKit

class IBViewController: UIViewController {
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        loginButton.layer.cornerRadius = 5
        loginButton.layer.borderColor = UIColor.white.cgColor
        loginButton.layer.borderWidth = 1
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        print("Login")
    }
}
