//
//  ContentView.swift
//  Shared
//
//  Created by 小笠原佑樹 on 2022/07/03.
//

import SwiftUI

struct Hand {
    var imageName: String
    var handText: String

    init(imageName: String, handText: String) {
        self.imageName = imageName
        self.handText = handText
    }
}

struct JankenHand: View {
    var hand: Hand

    var body: some View {
        Image(hand.imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
        Spacer()
        Text(hand.handText)
            .padding(.bottom)
    }
}

struct ContentView: View {
    @State var answerNumber: Int = 0

    var body: some View {
        VStack {
            Spacer()

            switch answerNumber {
            case 1:
                let hand: Hand = Hand.init(imageName: "gu", handText: "ぐー")
                JankenHand(hand: hand)
            case 2:
                let hand: Hand = Hand.init(imageName: "choki", handText: "チョキ")
                JankenHand(hand: hand)
            case 3:
                let hand: Hand = Hand.init(imageName: "pa", handText: "( ᐛ👐)パァ")
                JankenHand(hand: hand)
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
