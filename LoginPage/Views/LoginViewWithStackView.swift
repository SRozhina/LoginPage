import UIKit

class LoginViewWithStackView: UIView, ILoginView {
    let usernameTextField: UITextField = UIControlFactory.createUsernameTextField()
    let passwordTextField: UITextField = UIControlFactory.createPasswordTextField()
    let loginButton: UIButton = UIControlFactory.createLoginButton()
    lazy var stackView: UIStackView = UIControlFactory.createStackView(subviews: [usernameTextField, passwordTextField, loginButton])
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(stackView)
        backgroundColor = .darkGray
        
        stackView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40).isActive = true
        
        usernameTextField.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.075).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("No init implementation")
    }
}
