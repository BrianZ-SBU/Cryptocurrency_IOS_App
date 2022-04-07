//
//  Model.swift
//  testing123
//
//  Created by Brian Zhou on 4/6/22.
//

import Foundation

struct Crypto: Codable {
    let asset_id: String
    let name: String?
    let price_usd: Float?
    let id_icon: String?
}
