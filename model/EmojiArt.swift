//
//  EmojiArt.swift
//  EmojiArt
//
//  Created by woanjwu liauh on 2021/6/28.
//

import Foundation

struct EmojiArt {
    var backgroundURL: URL?
    var emojis = [Emoji]()
    
    struct Emoji: Identifiable {
        let text: String
        var x: Int
        var y: Int
        var size: Int
        var id: Int
        
        fileprivate init(text: String, x: Int, y: Int, size: Int, id: Int) {
            self.text = text
            self.x = x
            self.y = y
            self.size = size
            self.id = id
        }
    }
    
    private var uniqueEmojiID = 0
    
    mutating func addEmoji(_ text: String, x: Int, y: Int, size: Int) {
        uniqueEmojiID += 1
        emojis.append(Emoji(text: text, x: x, y: y, size: size, id: uniqueEmojiID))
    }
}
