//
//  UIButtonExtensions.swift
//  DesafioNavegaçãoEntreTelas
//
//  Created by Eduardo on 11/02/26.
//

import Foundation
import UIKit


extension UIButton {
    func ConfigButton(title: String, backgroundColor: UIColor, titleColor: UIColor, cornerRadius: Int){
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.setTitleColor(titleColor, for: .normal)
        self.layer.cornerRadius = CGFloat(cornerRadius)
    }
}
