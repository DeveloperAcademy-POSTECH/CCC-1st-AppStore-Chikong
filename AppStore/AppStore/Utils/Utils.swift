//
//  Utils.swift
//  AppStore
//
//  Created by Hong jeongmin on 2022/06/26.
//

import SwiftUI

// MARK: - 오늘의 날짜를 구하는 함수
func getToday() -> String {
    let date = Date()
    let dateFormatter = DateFormatter()
    
    dateFormatter.locale = Locale(identifier: "ko_KR")
    dateFormatter.dateFormat = "MMM d일 EEEE"
    return dateFormatter.string(from: date)
}
