//
//  AppInfo.swift
//  LemonDaily
//
//  Created by kasoly on 2022/4/22.
//


import Foundation
import SwiftUI

class AppInfo: ObservableObject {
    @Published var tabItemNum: Int = 0
    @Published var isLoggin: Bool = false
    @Published var showSearch: Bool = false
    @AppStorage("appLanguage") var lang: Language = IsChinese ? .chinese: .english
    init() {}
    
    
    func freshVipStatus() {}
    

    deinit{
        print("🌀AppInfo released")
    }
}



