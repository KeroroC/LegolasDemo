//
//  ColorDemoView.swift
//  LegolasDemo
//
//  Created by 王鹏 on 2023/10/22.
//

import SwiftUI

struct ColorDemoView: View {
    var body: some View {
        VStack {
            Text("天助自助者")
                .font(.headline)
            Text("God help those who help themselves")
                .font(.system(.headline, design: .rounded))
        }
        .foregroundColor(Color.black)
        .padding()
        .contextMenu() {
            HStack {
                Button(action: {
                    UIPasteboard.general.string = "天助自助者"
                }) {
                    HStack {
                        Text("Copy")
                        Image(systemName: "rectangle.on.rectangle.angled")
                    }
                }
            }
        }
    }
}

// FIXME: - 一个待修复的内容
//struct ColorDemoView_DarkMode: PreviewProvider {
//    static var previews: some View {
//        ColorDemoView()
//            .previewLayout(.fixed(width: 300, height: 200))
//    }
//}

#Preview {
    ColorDemoView()
}
