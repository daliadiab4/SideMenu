//
//  RoundImg.swift
//  SMT
//
//  Created by DaliaDiab on 3/19/19.
//  Copyright © 2019 DaliaDiab. All rights reserved.
//

import Foundation
import UIKit
extension UIImageView {
    func RoundImage()  {
        self.layer.cornerRadius = self.frame.size.width / 2
        self.clipsToBounds = true
    }
}
