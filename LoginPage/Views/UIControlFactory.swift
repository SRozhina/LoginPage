import UIKit

public class UIControlFactory {
    static func createUsernameTextField() -> UITextField {
        return createDefaultTextField(placeholder: "Username")
    }
    
    static func createPasswordTextField() -> UITextField {
        return createDefaultTextField(placeholder: "Password")
    }
    
    static func createLoginButton() -> UIButton {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont(name: "AvenirNext-Regular", size: 17.0)
        button.setTitle("Login", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }
    
    static func createStackView(subviews: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: subviews)
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }
    
    static private func createDefaultTextField(placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.placeholder = placeholder
        textField.font = UIFont(name: "AvenirNext-Regular", size: 17.0)
        textField.textColor = .darkGray
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }
}
