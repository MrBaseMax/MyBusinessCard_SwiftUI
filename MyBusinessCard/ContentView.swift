//
//  ContentView.swift
//  MyBusinessCard
//
//  Created by Макс on 09.04.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		ZStack {
			Color(.systemTeal)
				.edgesIgnoringSafeArea(.all)
			VStack {
				Image("me")
					.resizable()
					.aspectRatio(contentMode: .fill)
					.frame(width: 200, height: 200, alignment: .center)
					.clipShape(RoundedRectangle(cornerRadius: 50))
					.overlay(RoundedRectangle(cornerRadius: 50).stroke(Color.white, lineWidth: 4))
					
				Text("Max Shaykov")
					.font(Font.custom("Pacifico-Regular", size: 40))
					.bold()
					.foregroundColor(.white)
				Text("iOS Developer")
					.foregroundColor(.white)
					.font(.system(size: 25))
				Divider()
				InfoView(text: "+7 (9..) ... .. .1", imageName: "phone.fill")
				InfoView(text: "s.....@......d.com", imageName: "envelope.fill")
			}
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


