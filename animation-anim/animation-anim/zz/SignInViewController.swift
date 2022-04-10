//
//  SignInViewController.swift
//  zz
//
//  Created by Даниил on 02.02.2022.
//

import UIKit

class SignInViewController: UIViewController {
    
    @IBOutlet weak var inputPassword: UITextField!
    @IBOutlet weak var inputLogin: UITextField!
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var logotype: UIImageView!
    
    // Вызывается когда происходит создается класс
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Создан класс")
    }
    
    // Вызывается когда экран еще не показан пользователю, но уже создан класс
    override func viewWillAppear(_ animated: Bool) {
        print("Подготовка экрана")
        self.inputLogin.center.x += self.view.bounds.width
        self.inputPassword.center.x -= self.view.bounds.width
        self.appNameLabel.center.y += self.view.bounds.height
        self.logotype.center.y += self.view.bounds.height
    }
    
    // Вызывается когда экран показ пользователю
    override func viewDidAppear(_ animated: Bool) {
        print("Экран показан")
        UIView.animate(withDuration: 1.0) {
            self.inputLogin.center.x -= self.view.bounds.width
            self.inputPassword.center.x += self.view.bounds.width
            self.appNameLabel.center.y -= self.view.bounds.height
            self.logotype.center.y -= self.view.bounds.height
        }
    }
}
