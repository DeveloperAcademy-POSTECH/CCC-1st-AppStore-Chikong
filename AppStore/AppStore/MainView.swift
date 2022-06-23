//
//  ContentView.swift
//  AppStore
//
//  Created by Hong jeongmin on 2022/06/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            TodayView()
                .tabItem {
                    Image(systemName: "doc.text.image")
                    Text("투데이")
                }
            GameView()
                .tabItem {
                    Image("gameTab")
                    Text("게임")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
