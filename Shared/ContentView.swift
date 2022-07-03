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

func determineHand(answerNumber: Int) -> Hand {
    let hand: Hand

    switch answerNumber {
    case 1:
        hand = Hand.init(imageName: "gu", handText: "ぐー")
    case 2:
        hand = Hand.init(imageName: "choki", handText: "チョキ")
    default:
        hand = Hand.init(imageName: "pa", handText: "( ᐛ👐)パァ")
    }
    return hand
}

struct ContentView: View {
    @State var answerNumber: Int = 0

    var body: some View {
        VStack {
            Spacer()

            if answerNumber == 0 {
                Text("これからジャンケンをします")
                    .padding(.bottom)
            } else {
                let hand = determineHand(answerNumber: answerNumber)
                JankenHand(hand: hand)
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
