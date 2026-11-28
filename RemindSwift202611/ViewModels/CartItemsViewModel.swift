//
//  CartItemsViewModel.swift
//  RemindSwift202611
//
//  Created by YoonieMac on 11/28/26.
//

import Foundation
import Observation


@Observable
final class CartItemsViewModel {
	
	var cartItems: [CartItem] = [
		CartItem(name: "사과", quantity: Decimal(2), unitPrice: Decimal(1500)),
		CartItem(name: "우유", quantity: Decimal(0), unitPrice: Decimal(2500)),
		CartItem(name: "식빵", quantity: Decimal(5), unitPrice: Decimal(3000))
	]
	
	var totalQuantity: Decimal
	
	var totalPrice: Decimal
	
	var currentItem: CartItem?
	
	var isOrdered: Bool
	
	var isCurrentItemChanged: Bool = false {
		didSet {
			totalQuantity = cartItems.reduce(Decimal(0)) { $0 + $1.quantity }
			totalPrice = cartItems.reduce(Decimal(0)) { $0 + $1.subtotal }
		}
	}
	
	init(totalQuantity: Decimal = Decimal(0), totalPrice: Decimal = Decimal(0), isOrdered: Bool = false) {
		self.totalQuantity = totalQuantity
		self.totalPrice = totalPrice
		self.isOrdered = isOrdered
	}
    
	func quantityChangeInCart(operation: BasicOperation) {
		guard var currentItem else { return }
		guard let currentItemIndex = cartItems.firstIndex(where: { $0.id == currentItem.id }) else {return}
		switch operation {
		case .add:
			cartItems[currentItemIndex].quantity += 1
		case .subtract:
			cartItems[currentItemIndex].quantity -= 1
		}
	}
    
}
