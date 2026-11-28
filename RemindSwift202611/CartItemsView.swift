//
//  ContentView.swift
//  RemindSwift202611
//
//  Created by YoonieMac on 11/26/26.
//

import SwiftUI

struct CartItemsView: View {
	
	var cartVM: CartItemsViewModel = .init()

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
					ForEach($cartVM.) { item in
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
