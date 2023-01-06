//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Xi Chen on 1/2/23.
//

import SwiftUI


class EmojiMemoryGame: ObservableObject {
    typealias Card = GameModel<String>.Card
    
    private static let emojis = ["🚗", "🛴", "✈️", "🛵", "⛵️", "🚎", "🚐", "🚛", "🛻", "🏎", "🚂", "🚊", "🚀", "🚁", "🚢", "🛶", "🛥", "🚞", "🚟", "🚃", "🚕", "🚙", "🚑", "🚖"]
    
    private static func createMemoryGame() -> GameModel<String> {
        GameModel<String>(numberOfPairOfCards: 12) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: Array<Card>  {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
 
