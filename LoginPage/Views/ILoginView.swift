import UIKit

protocol ILoginView {
    var usernameTextField: UITextField { get }
    var passwordTextField: UITextField { get }
    var loginButton: UIButton { get }
}
