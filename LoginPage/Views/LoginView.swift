import UIKit

class LoginView: UIView, ILoginView {
    let usernameTextField: UITextField = UIControlFactory.createUsernameTextField()
    let passwordTextField: UITextField = UIControlFactory.createPasswordTextField()
    let loginButton: UIButton = UIControlFactory.createLoginButton()
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .darkGray
        addViews()
        setupAutoLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("No init implementation")
    }
    
    private func addViews() {
        addSubview(backgroundView)
        backgroundView.addSubview(usernameTextField)
        backgroundView.addSubview(passwordTextField)
        backgroundView.addSubview(loginButton)
    }
    
    private func setupAutoLayout() {
        positionBackgroundView()
        positionUsernameTextField()
        positionPasswordTextField()
        positionLoginButton()
    }
    
    private func positionBackgroundView() {
        backgroundView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40).isActive = true
        backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40).isActive = true
    }
    
    private func positionUsernameTextField() {
        usernameTextField.topAnchor.constraint(equalTo: backgroundView.topAnchor).isActive = true
        usernameTextField.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.075) .isActive = true
        usernameTextField.leftAnchor.constraint(equalTo: backgroundView.leftAnchor).isActive = true
        usernameTextField.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor).isActive = true
    }
    
    private func positionPasswordTextField() {
        passwordTextField.topAnchor.constraint(equalTo: usernameTextField.bottomAnchor, constant: 20).isActive = true
        passwordTextField.heightAnchor.constraint(equalTo: usernameTextField.heightAnchor).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor).isActive = true
    }
    
    private func positionLoginButton() {
        loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20).isActive = true
        loginButton.heightAnchor.constraint(equalTo: usernameTextField.heightAnchor) .isActive = true
        loginButton.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor).isActive = true
        loginButton.bottomAnchor.constraint(equalTo: backgroundView.bottomAnchor).isActive = true
    }
}
