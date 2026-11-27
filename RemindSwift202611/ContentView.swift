//
//  ContentView.swift
//  RemindSwift202611
//
//  Created by YoonieMac on 11/26/26.
//

import SwiftUI

struct ContentView: View {
	@State private var cartItems: [CartItem] = [
		CartItem(name: "사과", quantity: 2, price: 1500),
		CartItem(name: "우유", quantity: 0, price: 2500),
		CartItem(name: "식빵", quantity: 5, price: 3000)
	]
	
    var body: some View {
		ZStack {
			Color.green.opacity(0.3).ignoresSafeArea()
			
			VStack(spacing: 50) {
				VStack(alignment: .center) {
					Text("장바구니")
						.font(.largeTitle)
						.fontWeight(.heavy)
				}
				Spacer()
				VStack(alignment: .leading, spacing: 30) {
					ForEach($cartItems) { item in
						ItemView(item: item)
					}
				}
				Spacer()
				VStack(alignment: .leading, spacing: 30) {
					Button("전체 초기화") {
						
					}
				}
				
			}
			.padding()
		}
    }
}

struct ItemView: View {
	@Binding var item: CartItem
	
	var body: some View {
		HStack {
			Text(item.name)
			Text("  (\(item.price.formatted())원)")
			Spacer()
			HStack(spacing: 20) {
				Button("➖") {
					
				}
				Text("\(item.quantity)")
				Button("➕") {
					
				}
			}
		}
	}
}

#Preview {
    ContentView()
}
