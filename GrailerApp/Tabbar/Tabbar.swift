import Foundation
import SwiftUI
import UI

struct Tabbar: View {
  enum Tabs: Identifiable, CaseIterable {
    case items, stash, runes, world, more
    
    var id: String {
      title
    }
    
    var title: String {
      switch self {
      case .items:
        return "Items"
      case .stash:
        return "Stash"
      case .runes:
        return "Runes"
      case .world:
        return "World"
      case .more:
        return "More"
      }
    }
    
    var icon: String {
      switch self {
      case .items:
        return "list.bullet"
      case .stash:
        return "bookmark"
      case .runes:
        return "leaf"
      case .world:
        return "globe.americas"
      case .more:
        return "ellipsis"
      }
    }
  }
  
  @State private var selectedTab: Tabs = .items
  
  init() {
    UITabBarItem.appearance().setTitleTextAttributes([.font: UIFont.exocet(size: .tabItem)], for: .normal)
  }
  
  var body: some View {
    TabView(selection: $selectedTab) {
      ForEach(Tabs.allCases) { tab in
        VStack {
          Text(tab.title).font(.diablo(size: .title, weight: .regular))
        }
        .tabItem {
          Label {
            Text(tab.title)
          } icon: {
            Image(systemName: tab.icon)
          }
        }
      }
    }
  }
}
