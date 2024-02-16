//
//  UIResponder+Extension.swift
//  tip-caculator
//
//  Created by WEI-TSUNG CHENG on 2024/2/1.
//

import UIKit

extension UIResponder {
  var parentViewController: UIViewController? {
    return next as? UIViewController ?? next?.parentViewController
  }
}
