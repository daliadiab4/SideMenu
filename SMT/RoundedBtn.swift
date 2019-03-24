//
//  RoundedBtn.swift
//  SMT
//
//  Created by DaliaDiab on 3/20/19.
//  Copyright © 2019 DaliaDiab. All rights reserved.
//

import Foundation
import UIKit
extension UIButton {
    func RoundBtn()  {
        self.layer.cornerRadius = self.frame.size.width - 20
        self.layer.cornerRadius = self.frame.size.height - 20
        
        self.clipsToBounds = true
    }
}
