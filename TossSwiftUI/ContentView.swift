//
//  ContentView.swift
//  TossSwiftUI
//
//  Created by A_Mcflurry on 4/16/24.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		VStack {
			topImageView

			descriptionLabelView

			labelsView

			Spacer()

			agreementView

			buttonsView
		}
		.padding(.horizontal)
	}
}

#Preview {
	ContentView()
}

extension ContentView {
	private var topImageView: some View {
		Image(systemName: "sprinkler.and.droplets")
			.foregroundStyle(.orange)
			.frame(maxWidth: .infinity, alignment: .leading)
			.font(.system(size: 45))
	}

	private var descriptionLabelView: some View {
		Text("포인트를 더 모을 수 있게 맞춤 혜택을 추천해드릴까요?")
			.font(.title2)
			.bold()
			.frame(maxWidth: .infinity, alignment: .leading)
			.padding(.vertical)
	}

	private var labelsView: some View {
		VStack(alignment: .leading) {
			Label(
				title: { Text("매일 포인트 받는 출석체크, 퀴즈") },
				icon: { Image(systemName: "calendar").foregroundStyle(.blue) }
			)

			Label(
				title: { Text("새로운 이벤트") },
				icon: { Image(systemName: "n.circle.fill").foregroundStyle(.pink) }
			)
			.padding(.vertical)

			Label(
				title: { Text("미션 추천") },
				icon: { Image(systemName: "star.fill").foregroundStyle(.yellow) }
			)
		}
		.font(.title2)
		.frame(maxWidth: .infinity, alignment: .leading)
	}

	private var agreementView: some View {
		Text("[선택] 맞춤형 서비스 이용 동의")
			.frame(maxWidth: .infinity, alignment: .leading)
			.padding(.bottom)
			.padding(.bottom)
			.foregroundStyle(.secondary)
	}

	private var buttonsView: some View {
		VStack {
			Button {

			} label: {
				Text("동의하기")
					.frame(maxWidth: .infinity)
					.padding(.vertical)
					.foregroundStyle(.white)
					.background(.blue)
					.cornerRadius(25)
			}


			Button("다음에 하기") {

			}
			.foregroundStyle(.gray)
			.padding()
		}
	}
}
