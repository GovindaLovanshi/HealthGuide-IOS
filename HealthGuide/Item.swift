//
//  Item.swift
//  HealthGuide
//
//  Created by Govinda lovanshi on 18/11/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
