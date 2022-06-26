//
//  TodayView.swift
//  AppStore
//
//  Created by Hong jeongmin on 2022/06/23.
//

import SwiftUI

struct TodayView: View {
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("\(getToday())")
                    .font(.caption2)
                    .foregroundColor(Color(.systemGray))
                
                HStack {
                    Text("투데이")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    
                    Spacer()
                    
                    Image(systemName: "person.circle")
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
    }
}
