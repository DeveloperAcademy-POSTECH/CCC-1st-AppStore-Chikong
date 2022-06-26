//
//  AppContensView.swift
//  AppStore
//
//  Created by Hong jeongmin on 2022/06/24.
//

import SwiftUI

struct AppContentsView: View {
    var body: some View {
        // 데이터 적용할때 수정해야할 부분
        VStack(alignment: .leading) {
            Divider()
                .background(Color(.systemGray))
            Text("지금 참여 가능")
                .font(.caption2)
                .foregroundColor(Color(.systemBlue))
            Text("쿠키런: 오븐브레이크")
            Text("콜리플라워맛 쿠키와 질주하세요")
                .foregroundColor(Color(.systemGray))
            Image("testImg")
                .resizable()
                .cornerRadius(10)
                .frame(maxWidth: UIScreen.main.bounds.width - 50, maxHeight: UIScreen.main.bounds.height / 4)
        }
    }
}

struct AppContentsView_Previews: PreviewProvider {
    static var previews: some View {
        AppContentsView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
