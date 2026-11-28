//
//  CartItem.swift
//  RemindSwift202611
//
//  Created by YoonieMac on 11/26/26.
//

import Foundation


enum BasicOperation {
	case add
	case subtract
}

struct CartItem: Identifiable {
	let id = UUID()
	let name: String
	var quantity: Decimal
	var unitPrice: Decimal
	
	var subtotal: Decimal {
		return unitPrice * quantity
	}
}

