import SwiftUI
import UI

@main
struct GrailerAppApp: App {
  private let colorScheme: ColorScheme = .dark
  
  var body: some Scene {
    WindowGroup {
      Tabbar()
        .environment(\.colorScheme, colorScheme)
        .accentColor(.itemsColor(color: .runic))
    }
  }
}
