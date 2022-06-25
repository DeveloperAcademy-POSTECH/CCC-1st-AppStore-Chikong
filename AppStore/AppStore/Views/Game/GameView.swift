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
                    
                    NavigationLink("모두 보기", destination: PopularView())
                        .foregroundColor(Color(.systemBlue))
                }
                .padding([.leading, .trailing])
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<6) { _ in
                            VStack {
                                ForEach(0..<3) { idx in
                                    AppRankView()
                                    if idx != 2 {
                                        Divider()
                                            .padding()
                                    }
                                }
                            }
                        }
                    }
                }
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
