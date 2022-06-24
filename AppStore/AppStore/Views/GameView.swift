//
//  GameView.swift
//  AppStore
//
//  Created by Hong jeongmin on 2022/06/23.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<11) { _ in
                            AppContensView()
                        }
                    }
                    .padding(.horizontal)
                }
                
                Divider()
                    .padding([.leading, .trailing])
                HStack {
                    Text("무료 게임 순위")
                        .font(.title)
                        .fontWeight(.heavy)
                    Spacer()
                    
                    Button("모두 보기") {}
                }
                .padding([.leading, .trailing])
                
                AppRankView()
                
                .navigationTitle("게임")
                .navigationBarItems(trailing: Image(systemName: "person.circle"))
            }
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
