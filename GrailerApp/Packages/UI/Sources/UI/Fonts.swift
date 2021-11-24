
import Foundation
import SwiftUI

public enum DiabloFontSize: CGFloat {
  case title = 18
  case normal = 14
  case small = 12
  case tabItem = 11
}

extension Font {
  public static func diablo(size: DiabloFontSize, weight: Font.Weight) -> Font {
    switch weight {
    case .regular:
      return Font.custom("Exocet", size: size.rawValue)
    case .bold:
      return Font.custom("AvQest", size: size.rawValue)
    default:
      return Font.custom("Exocet", size: size.rawValue)
    }
  }
}

extension UIFont {
  public static func exocet(size: DiabloFontSize) -> UIFont {
    return UIFont(name: "Exocet", size: size.rawValue)!
  }
}
