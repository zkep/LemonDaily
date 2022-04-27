//
//  LemonDailyApp.swift
//  LemonDaily
//
//  Created by kasoly on 2022/4/22.
//

import SwiftUI

@main
struct LemonDailyApp: App {
    @Environment(\.scenePhase) var scenePhase
      let persistenceController = PersistenceController.shared
      let appInfo = AppInfo()

      @AppStorage("appLanguage") var lang: Language = IsChinese ? .chinese: .english
      var body: some Scene {
          WindowGroup {
              RootView()
                  .modifier(ColorSchemeModifier())
                  .environmentObject(appInfo)
                  .environment(\.locale, .init(identifier: lang.description))
                  .environment(\.managedObjectContext, persistenceController.container.viewContext)
                  .onChange(of: scenePhase) { newPhase in
                      if newPhase == .active {
                          UIApplication.shared.applicationIconBadgeNumber = 0
                   }
                }
            }
       }
}
