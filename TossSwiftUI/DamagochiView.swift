//
//  DamagochiView.swift
//  TossSwiftUI
//
//  Created by A_Mcflurry on 4/18/24.
//

import SwiftUI

struct DamagochiView: View {
	@State private var rice = "0"
	@State private var water = "0"
    var body: some View {
		 VStack {
			 Text("방실방실 다마고치")
				 .padding()
				 .font(.title3)
				 .clipShape(RoundedRectangle(cornerRadius: 10))
				 .border(.black)

			 Text("LV1 . 밥알 \(rice) . 물방울 \(water)")
				 .font(.title3)

			 EatView(number: $rice, buttonText: "밥먹기", placeHolder: "밥주세용", image: "star")
			 EatView(number: $water, buttonText: "물먹기", placeHolder: "물주세용", image: "drop.circle")
		 }.background(.mint)
    }
}

#Preview {
    DamagochiView()
}

struct EatView: View {
	@Binding var number: String
	@State private var inputText: String = ""
	let buttonText: String
	let placeHolder: String
	let image: String

	var body: some View {
		HStack {
			TextField(placeHolder, text: $inputText)
			Button {
				if let data = Int(inputText) {
					if let data1 = Int(number) {
						number = String(data + data1 >= 100 ? 100 : data + data1)
					}
				}
			} label: {
				Label(buttonText, systemImage: image)
			}
		}
		.padding(.horizontal)
	}
}
