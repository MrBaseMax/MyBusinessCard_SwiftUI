//
//  InfoView.swift
//  MyBusinessCard
//
//  Created by Макс on 09.04.2021.
//

import SwiftUI

struct InfoView: View {
	let text: String
	let imageName: String
	
	var body: some View {
		RoundedRectangle(cornerRadius: 25)
			.fill(Color.white)
			.frame(height: 50.0)
			.foregroundColor(.white)
			.overlay(
				HStack {
					Image(systemName: imageName)
					Text(text)
						.font(.system(size: 18))
						.foregroundColor(Color(.systemTeal))
						.bold()
				} ).foregroundColor(.green)
			.padding(10)
	}
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
		InfoView(text: "+7 (926) 174 85 31", imageName: "phone.fill")
			.previewLayout(.sizeThatFits)
    }
}
