import UIKit
   
class ViewController: UIViewController {
    typealias LoginViewType = UIView & ILoginView
    
    unowned var loginView: LoginViewType { return self.view as! LoginViewType }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.loginButton.addTarget(self, action: #selector(loginButtonTapped), for: .touchUpInside)
    }
    
    override func loadView() {
        self.view = LoginViewWithStackView()
    }
    
    @objc func loginButtonTapped() {
        print("Login")
    }
}
