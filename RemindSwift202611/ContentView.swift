//
//  ContentView.swift
//  RemindSwift202611
//
//  Created by YoonieMac on 11/26/26.
//

import SwiftUI

struct ContentView: View {
	
    var body: some View {
		CartItemsView(cartVM: CartItemsViewModel()) {
			
		} isSubtracted: {
			
		}

    }
}

#Preview {
    ContentView()
}
