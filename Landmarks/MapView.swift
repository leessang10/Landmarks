//
//  MapView.swift
//  Landmarks
//
//  Created by 이상무 on 2021/01/05.
//

import SwiftUI
import MapKit

struct MapView: View {
    //Turtle Rock의 지도 좌표값을 지정한다
    //@State는 전역변수를 의미하는 듯
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
