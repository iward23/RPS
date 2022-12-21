//
//  Sign.swift
//  RPS
//
//  Created by 9i on 12/20/22.
//

import Foundation

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
    
    func checkWin(sign: Sign){
        if self == 
        
    }
}
