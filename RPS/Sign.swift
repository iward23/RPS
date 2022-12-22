//
//  Sign.swift
//  RPS
//
//  Created by 9i on 12/20/22.
//

import Foundation


func randomSign() -> Sign {
    let sign = Int.random(in: 0...2)
    
        if sign == 0 {
            return Sign.rock
        } else if sign == 1 {
            return .paper
        } else {
            return .scissors
        }
    }


enum Sign {
    case rock
    case paper
    case scissors
    
    var signChoice: String{
        switch self{
        case .rock:
            return "👊🏽"
        case .paper:
            return "✋🏽"
        case .scissors:
            return "✌🏽"
        }
    }
    
    func checkWin(sign: Sign)-> GameState{
        if self == .rock && sign == .rock{
            return .draw
        }
        if self == .rock && sign == .paper{
            return .lose
        }
        if self == .rock && sign == .scissors{
            return .win
        }
        
        
        if self == .scissors && sign == .scissors{
            return .draw
        }
        if self == .scissors && sign == .paper{
            return .win
        }
        if self == .scissors && sign == .rock{
            return .lose
        }
        
        
        if self == .paper && sign == .paper{
            return .draw
        }
        if self == .paper && sign == .scissors{
            return .lose
        }
        if self == .paper && sign == .rock{
            return .win
        }
        
        return .draw
        
    }
    
}

