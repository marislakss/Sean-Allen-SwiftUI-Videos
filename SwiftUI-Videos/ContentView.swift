//
//  ContentView.swift
//  SwiftUI-Videos
//
//  Created by Māris Lakšs on 14/03/2023.
//

import SwiftUI

struct ContentView: View {

    var videos: [Video] = VideoList.topTwelve

    var body: some View {
        NavigationView {
            List(videos) { video in
                HStack {
                    Image(video.imageName)
                    // These are all called modifiers
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90.0)
                        .cornerRadius(8)

                    Spacer().frame(width: 16)

                    VStack(alignment: .leading) {
                        Text(video.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.75)

                        Spacer().frame(height: 5)

                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("Sean's Videos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(videos: VideoList.topTwelve)
    }
}
