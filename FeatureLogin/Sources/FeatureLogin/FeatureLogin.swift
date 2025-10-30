// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit
import CommonKit
import UIComponents

public final class LoginViewController: UIViewController {
    public var onLoginSuccess: ((UserModel) -> Void)?

    public override func viewDidLoad() {
        super.viewDidLoad()
        let button = PrimaryButton(title: "Login")
        button.addTarget(self, action: #selector(login), for: .touchUpInside)
        view.addSubview(button)
    }

    @objc private func login() {
        let user = UserModel(name: "Chat Mẫu")
        onLoginSuccess?(user)
    }
}
