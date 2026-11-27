//
//  CartItem.swift
//  RemindSwift202611
//
//  Created by YoonieMac on 11/26/26.
//

import Foundation

struct CartItem: Identifiable {
	let id = UUID()
	let name: String
	var quantity: Int
	var price: Int
}
