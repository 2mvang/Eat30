//
//  EventData.swift
//  Eat30
//
//  Created by Marissa Vang on 4/30/20.
//  Copyright © 2020 Marissa Vang. All rights reserved.
//

import Foundation

struct EventData: Codable {
    
    var event_id: Int
    var event_name: String
    var event_address: String
    var event_price: Int
}
