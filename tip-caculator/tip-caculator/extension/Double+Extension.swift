//
//  Double+Extension.swift
//  tip-caculator
//
//  Created by WEI-TSUNG CHENG on 2024/2/1.
//

import Foundation

extension Double {
  var currencyFormatted: String {
    var isWholeNumber: Bool {
      isZero ? true: !isNormal ? false: self == rounded()
    }
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    formatter.minimumFractionDigits = isWholeNumber ? 0 : 2
    return formatter.string(for: self) ?? ""
  }
}
