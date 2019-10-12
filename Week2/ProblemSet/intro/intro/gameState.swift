//
//  gameState.swift
//  intro
//
//  Created by Alissa on 10/11/19.
//  Copyright © 2019 Apple Device 11. All rights reserved.
//

import Foundation

import UIKit

import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum GameState {
    case start, win, lose, draw
}

enum Sign: String {
    case rock, paper, scissors
    
    var simpleDescription: String {
        switch self {
        case .rock:
            return "👊🏻"
        case .paper:
            return "✋🏻"
        case .scissors:
            return "✌🏻"
        }
    }

func compare(computer: Sign) -> GameState {
    if self == computer {
        return .draw
    }
    switch self {
    case .rock:
        if computer == .paper{
            return .lose
        } else if computer == .scissors {
            return .win
        }
    case .paper:
        if computer == .scissors{
            return .lose
        } else if computer == .rock {
            return .win
        }
    case .scissors:
        if computer == .paper{
            return .win
        } else if computer == .rock {
            return .lose
        }
    }
    return .start
}
}
