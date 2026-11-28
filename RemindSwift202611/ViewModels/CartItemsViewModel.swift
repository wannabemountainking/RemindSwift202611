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
		CartItem(name: "사과", quantity: 2, price: 1500),
		CartItem(name: "우유", quantity: 0, price: 2500),
		CartItem(name: "식빵", quantity: 5, price: 3000)
	]
	
    
    func addItem(id: UUID) {
        guard let itemIndex = cartItems.firstIndex(where: { $0.id == id }) else { return }
        cartItems[itemIndex].quantity += 1
    }
    
    func subtractItem(id: UUID) {
        guard let itemIndex = cartItems.firstIndex(where: { $0.id == id }) else {return}
        cartItems[itemIndex].quantity -= 1
    }
    
    
}
