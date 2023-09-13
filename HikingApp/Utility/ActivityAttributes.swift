//
//  File.swift
//  HikingApp
//
//  Created by BBPDEV on 13/09/23.
//

import Foundation
import ActivityKit

public enum NavigationDirection: Codable {
    case right
    case left
    case straight
    
    var toString: String{
        switch self {
        case .right:
            return "→"
        case .left:
            return "←"
        case .straight:
            return "↑"
        }
    }
}

struct NavigationAttibutes: ActivityAttributes {
    public typealias NavigationStatus = ContentState
    
    public struct ContentState: Codable, Hashable {
        var nextTurn: NavigationDirection
        var eta: Date
    }
    
    var destination: String
}
