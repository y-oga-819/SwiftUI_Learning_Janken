//
//  ContentView.swift
//  Shared
//
//  Created by 小笠原佑樹 on 2022/07/03.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber:Int = 0

    var body: some View {
        VStack {
            Spacer()

            if answerNumber == 0 {
                Text("これからジャンケンをします")
                    .padding(.bottom)
            } else {
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("ぐー")
                    .padding(.bottom)
            }

            Button(action: {
                print("タップされたよ！")
                answerNumber += 1
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
