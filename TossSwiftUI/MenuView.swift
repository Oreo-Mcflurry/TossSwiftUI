//
//  MenuView.swift
//  TossSwiftUI
//
//  Created by A_Mcflurry on 4/17/24.
//

import SwiftUI

struct MenuView: View {
	var body: some View {
		VStack {
			HStack {
				TossView(title: "Test", subTitle: "test")
				TossView(title: "Test", subTitle: "test")
				TossView(title: "Test", subTitle: "test")
			}

			Text("내 신용 점수")
				.setting()

			Text("보안과 인증")
				.setting()

			Button("클릭") {

			}
			.setting()
		}
	}
}

#Preview {
	MenuView()
}

struct TossView: View {
	let title: String
	let subTitle: String

	var body: some View {
		VStack {
			Text(title)
			Text(subTitle)
		}
	}
}

extension View {
	func setting() -> some View {
		return self
			.font(.title)
			.padding()
			.foregroundStyle(.white)
			.background(.purple)
			.clipShape(.capsule)
	}
}
