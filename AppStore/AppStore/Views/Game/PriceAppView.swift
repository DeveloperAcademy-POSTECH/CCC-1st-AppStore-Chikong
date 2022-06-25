//
//  PriceAppView.swift
//  AppStore
//
//  Created by Hong jeongmin on 2022/06/25.
//

import SwiftUI

struct PriceAppView: View {
    var body: some View {
        HStack {
            Image(systemName: "gamecontroller.fill")

            Spacer()
            
            VStack {
                Text("1")
                    .font(.title3)
                Spacer()
            }
            
            VStack(alignment: .leading) {
                Text("Price Game Title")
                    .font(.title3)
            
                Text("사냥의 재미를 찢는다! 헌터의 혼을 불태워라!")
                    .font(.caption)
                    .foregroundColor(Color(.systemGray))
            }
            .frame(maxWidth: UIScreen.main.bounds.width / 2)
            
            Spacer()
            
            VStack {
                Button(action: {}) {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 75, height: 30)
                        .foregroundColor(Color(.systemGray6))
                        .overlay {
                            Text("₩3900")
                        }
                }
                
                Text("앱 내 구입")
                    .font(.caption2)
                    .foregroundColor(Color(.systemGray))
            }
        }
        .padding([.leading, .trailing])
    }
}

struct PriceAppView_Previews: PreviewProvider {
    static var previews: some View {
        PriceAppView()
    }
}
