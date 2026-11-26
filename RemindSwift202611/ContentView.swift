//
//  ContentView.swift
//  RemindSwift202611
//
//  Created by YoonieMac on 11/26/26.
//

import SwiftUI

struct ContentView: View {
	@State private var cartItems: [CartItem] = [
		CartItem(name: "사과", quantity: 2),
		CartItem(name: "우유", quantity: 0),
		CartItem(name: "식빵", quantity: 5)
	]
	@State private var currentItem: CartItem?
	
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

struct ListView {
	@Binding var cartItem: CartItem?
	
	var
	
}

#Preview {
    ContentView()
}
