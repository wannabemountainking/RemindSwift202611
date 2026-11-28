//
//  ContentView.swift
//  RemindSwift202611
//
//  Created by YoonieMac on 11/26/26.
//

import SwiftUI

struct CartItemsView: View {
	
	@State var cartVM: CartItemsViewModel = .init()
	var isAdded: (() -> Void)?
	var isSubtracted: (() -> Void)?
	
	var body: some View {
		ZStack {
			Color.green.opacity(0.3).ignoresSafeArea()
			
			VStack(spacing: 50) {
                
				VStack(alignment: .center) {
					Text("장바구니")
						.font(.largeTitle)
						.fontWeight(.heavy)
				}
                
				Divider()
                
				VStack(alignment: .leading, spacing: 30) {
                    ForEach($cartVM.cartItems) { item in
						ItemView(
							item: item,
							isAdding: { item in
								cartVM.quantityChangeInCart(operation: .add)
							},
							isSubtracting: { item in
								cartVM.quantityChangeInCart(operation: .subtract)
							}
						)
                        .onTapGesture {
                            
                        }

					}
				}
                
				Divider()
                
				HStack {
					HStack(spacing: 20) {
						Text("선택 : ")
						Text("\(cartVM.currentItem?.name ?? "없음")")
					}
                    
					Spacer()
                    
					Button("선택 해제") {
						cartVM.currentItem = nil
					}
					
				}
				VStack(alignment: .center, spacing: 30) {
				
					Button("주문하기") {
						cartVM.isOrdered = true
					}
					
					if cartVM.isOrdered {
						Text("주문이 완료되었습니다")
					}
				}
			}
            .padding(.horizontal, 40)
		}
	}
}

struct ItemView: View {
	var item: CartItem
	let isAdding: (CartItem) -> Void
	let isSubtracting: (CartItem) -> Void
	
	var body: some View {
		HStack {
			Text(item.name)
			Text("  (\(item.unitPrice.formatted())원)")
			Spacer()
			HStack(spacing: 20) {
				Button("➖") {
					isSubtracting(item)
				}
				Text(String(describing: item.quantity))
				Button("➕") {
					isAdding(item)
				}
			}
		}
        .font(.title3)
        .fontWeight(.semibold)
	}
}

#Preview {
	ContentView()
}
