//
//  Source.swift
//  FirstMiniAppTA
//
//  Created by Сергей Саченко on 24.04.2022.
//

import Foundation

struct Source {
    enum SourceType {
        case word
        case action
    }
    
    private static let trueSource = [
        "Tell 5 facts about yourself",
        "Tell me about the first kiss",
        "What would you change in your life?",
        "How would you spend a million dollars?",
        "What do you dream about?",
        "Pizza or burger?",
        "What good deeds did you do today?",
        "Who is your favourite actor?",
        "Your secret bad habit?"]
    
    private static let actionSource = [
        "Dance to music selected by other players",
        "Show off your devilish laugh",
        "push up or sit down 10 times",
        "Draw an animal for the players to guess",
        "Fill your mouth with water and sit for a minute",
        "Sporade any person from friends",
        "Jump 20 times and crow like a rooster",
        "Eat a whole chocolate bar in less than a minute",
        "Give a massage to any of your friends"]
    
    static func getInfo(type: SourceType) -> String {
        switch type {
        case .word:
            return trueSource[Int.random(in: 0..<trueSource.count)]
        case .action:
            return actionSource[Int.random(in: 0..<actionSource.count)]
        }
    }
}
