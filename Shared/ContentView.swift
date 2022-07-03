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

            switch answerNumber {
            case 1:
                Image("gu")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("ぐー")
                    .padding(.bottom)
            case 2:
                Image("choki")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("ちょき")
                    .padding(.bottom)
            case 3:
                Image("pa")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("( ᐛ👐)パァ")
                    .padding(.bottom)
            default:
                Text("これからジャンケンをします")
                    .padding(.bottom)
            }

            Button(action: {
                print("タップされたよ！")
                var newAnswerNumber:Int = 0
                repeat {
                    newAnswerNumber = Int.random(in: 1...3)
                    
                    
                } while answerNumber == newAnswerNumber

                answerNumber = newAnswerNumber
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
