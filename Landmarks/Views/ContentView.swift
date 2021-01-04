//
//  ContentView.swift
//  Landmarks
//
//  Created by 이상무 on 2021/01/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //뒷 배경 지도
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            //원형 이미지
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            //주제
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                //부제
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                    
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider() //구분선
                //주제에 대한 설명
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
