
import UIKit

enum GameState {
    case start, win, lose, tie
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
        return .tie
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

let computer = Sign.rock
let user = Sign.paper

print(user.compare(computer: computer))
