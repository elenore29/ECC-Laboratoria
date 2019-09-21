import UIKit
import GameplayKit

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


//let rock = Sign.rock.simpleDescription
//let paper = Sign.paper.simpleDescription
//let scissors = Sign.scissors.simpleDescription

func compare(computer: Sign) -> String {
    if self == computer {
        return "Empate"
    }
    switch self {
    case .rock:
        if computer == .paper{
            return "lose"
        } else if computer == .scissors {
            return "win"
        }
    case .paper:
        if computer == .scissors{
            return "lose"
        } else if computer == .rock {
            return "win"
        }
    case .scissors:
        if computer == .paper{
            return "win"
        } else if computer == .rock {
            return "lose"
        }
    }
    return ""
}
}
