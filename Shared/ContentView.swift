//
//  ContentView.swift
//  Shared
//
//  Created by 小笠原佑樹 on 2022/07/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()

            Image("gu")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Spacer()

            Text("ぐー")
                .padding(.bottom)
            Button(action: {
                print("タップされたよ！")
            }) {
                Text("じゃんけんをする！")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink.edgesIgnoringSafeArea([]))
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
