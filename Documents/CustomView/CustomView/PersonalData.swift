//
//  PersonalData.swift
//  CustomView
//
//  Created by LinhMAC on 26/07/2023.
//

import UIKit

class PersonalData: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setTitle("PersonalData", for: .normal)
        self.setTitleColor(UIColor(red: 0.09, green: 0.18, blue: 0.29, alpha: 1.00), for: .normal)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.backgroundColor = .white
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
    }

}
