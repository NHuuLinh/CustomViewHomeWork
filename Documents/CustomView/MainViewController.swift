//
//  MainViewController.swift
//  CustomView
//
//  Created by LinhMAC on 26/07/2023.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var testbutton: UIButton!
    @IBOutlet weak var jobInput: UITextField!
    @IBOutlet weak var avatarIcon: UIImageView!
    let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person.fill")
        imageView.backgroundColor = UIColor(red: 0.83, green: 0.86, blue: 0.99, alpha: 1.00)
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    let personalData: PersonalData = {
        let personalButton = PersonalData()
        personalButton.frame = CGRect(x: 100, y: 200, width: 300, height: 50)
        personalButton.setTitle("Personal Data", for: .normal)
        personalButton.contentHorizontalAlignment = .left
        personalButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        return personalButton
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        avatarImageView.frame = CGRect(x: 20,
                                       y: 50,
                                       width: 70,
                                       height: 70)
        view.addSubview(avatarImageView)
        self.view.addSubview(personalData)
        //gesture
        personalData.addTarget(self, action: #selector(goToPersonalDataView), for: .touchUpInside)
        nameInput.frame = CGRect(x: 100,
                               y: 50,
                               width: 200,
                               height: 30)
        nameInput.backgroundColor = .white
        nameInput.text = ""
        nameInput.textColor = UIColor(red: 0.04, green: 0.21, blue: 0.31, alpha: 1.00)
        nameInput.font = UIFont.systemFont(ofSize: 25)
        nameInput.borderStyle = .none
        jobInput.frame = CGRect(x: nameInput.frame.minX,
                                y: nameInput.frame.maxY + 10,
                               width: 200,
                               height: 15)
        jobInput.backgroundColor = .white
        jobInput.text = ""
        jobInput.textColor = UIColor(red: 0.04, green: 0.21, blue: 0.31, alpha: 1.00)
        jobInput.font = UIFont.systemFont(ofSize: 15)
        jobInput.borderStyle = .none
        avatarIcon.frame = CGRect(x: 20, y: personalData.frame.minY+10, width: 30, height: 30)
        avatarIcon.center.y = personalData.center.y
        avatarIcon.backgroundColor = UIColor(red: 0.95, green: 0.95, blue: 0.99, alpha: 1.00)
        
    }
    @objc func goToPersonalDataView() {
        print("ok")
        let PersonalDataScreen = PersonDataViewController()
        PersonalDataScreen.passData = { name, job, image in
                self.nameInput.text = name
                self.jobInput.text = job
                if let imageData = image {
                    self.avatarImageView.image = UIImage(data: imageData)
                } else {
                    self.avatarImageView.image = UIImage(systemName: "person.fill")
                }
            }
        PersonalDataScreen.modalPresentationStyle = .fullScreen
        present(PersonalDataScreen, animated: true)
    }
}
