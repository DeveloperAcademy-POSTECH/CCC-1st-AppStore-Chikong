//
//  PopularView.swift
//  AppStore
//
//  Created by Hong jeongmin on 2022/06/25.
//

import SwiftUI

struct PopularView: View {
    @State private var selectedPickerIndex: Int = 0
    
    let pickerItem = ["무료 앱", "유료 앱"]
    
    var body: some View {
        Picker("", selection: $selectedPickerIndex) {
            ForEach(0..<2) {
                Text(self.pickerItem[$0])
            }
        }
        .pickerStyle(SegmentedPickerStyle())
        .padding()
        .navigationTitle("인기 차트")
        .background(Color(.systemGray6))
        .frame(alignment: .topLeading)
        
        ScrollView(.vertical, showsIndicators: false) {
            if selectedPickerIndex == 0 {
                Text("hello")
            } else {
                Text("game")
            }
        }
    }
}

struct PopularView_Previews: PreviewProvider {
    static var previews: some View {
        PopularView()
    }
}
