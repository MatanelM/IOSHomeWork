//
//  Deck.swift
//  WarGame
//
//  Created by Student15 on 04/06/2023.
//

import Foundation

class Deck {
    var cards = [Card]()
    
    init() {
        for suit in [Suit.clubs, .diamonds, .hearts, .spades] {
            for rank in Rank.two.rawValue...Rank.ace.rawValue {
                cards.append(Card(suit: suit, rank: Rank(rawValue: rank)!))
            }
        }
    }
    
    // Draw a card from the deck
    func drawCard() -> Card? {
        if !cards.isEmpty {
            return cards.removeFirst()
        } else {
            return nil
        }
    }
    
    // Shuffle the deck
    func shuffleDeck() {
        cards.shuffle()
    }
}
