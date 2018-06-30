import UIKit
import SnapKit

class SnapkitLoginView: UIView, ILoginView {
    let usernameTextField: UITextField = UIControlFactory.createUsernameTextField()
    let passwordTextField: UITextField = UIControlFactory.createPasswordTextField()
    let loginButton: UIButton = UIControlFactory.createLoginButton()
    lazy var stackView: UIStackView = UIControlFactory.createStackView(subviews: [usernameTextField, passwordTextField, loginButton])
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(stackView)
        backgroundColor = .darkGray
        stackView.snp.makeConstraints { maker in
            maker.center.equalToSuperview()
            maker.leading.equalToSuperview().offset(40)
            maker.trailing.equalToSuperview().inset(40)
        }
        usernameTextField.snp.makeConstraints { maker in
            maker.height.equalTo(self).multipliedBy(0.075)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
