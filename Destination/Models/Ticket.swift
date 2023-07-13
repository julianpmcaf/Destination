//
//  Ticket.swift
//  Destination
//
//  Created by Julian Chin A Foeng on 13/07/2023.
//

import Foundation

struct Ticket: Hashable, Codable{
    var from: String
    var to: String
    var fromCode: String
    var toCode: String
    var departureTime: String
    var arrivalTime: String
}
