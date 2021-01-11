//
//  Landmark.swift
//  Landmarks
//
//  Created by 이상무 on 2021/01/05.
//

import Foundation
import SwiftUI
import CoreLocation

//landmarkData.json에 대응하는 Landmark라는 이름의 struct를 정의한다. (굳이 모든 필드를 정의하진 않았다)
/*
 landmarkData.json에 포함된 데이터 예시
 {
     "name": "Turtle Rock",
     "category": "Rivers",
     "city": "Twentynine Palms",
     "state": "California",
     "id": 1001,
     "isFeatured": true,
     "isFavorite": true,
     "park": "Joshua Tree National Park",
     "coordinates": {
         "longitude": -116.166868,
         "latitude": 34.011286
     },
     "description": "Suscipit inceptos est felis purus aenean aliquet adipiscing diam venenatis, augue nibh duis neque aliquam tellus condimentum sagittis vivamus, cras ante etiam sit conubia elit tempus accumsan libero, mattis per erat habitasse cubilia ligula penatibus curae. Sagittis lorem augue arcu blandit libero molestie non ullamcorper, finibus imperdiet iaculis ad quam per luctus neque, ligula curae mauris parturient diam auctor eleifend laoreet ridiculus, hendrerit adipiscing sociosqu pretium nec velit aliquam. Inceptos egestas maecenas imperdiet eget id donec nisl curae congue, massa tortor vivamus ridiculus integer porta ultrices venenatis aliquet, curabitur et posuere blandit magnis dictum auctor lacinia, eleifend dolor in ornare vulputate ipsum morbi felis. Faucibus cursus malesuada orci ultrices diam nisl taciti torquent, tempor eros suspendisse euismod condimentum dis velit mi tristique, a quis etiam dignissim dictum porttitor lobortis ad fermentum, sapien consectetur dui dolor purus elit pharetra. Interdum mattis sapien ac orci vestibulum vulputate laoreet proin hac, maecenas mollis ridiculus morbi praesent cubilia vitae ligula vel, sem semper volutpat curae mauris justo nisl luctus, non eros primis ultrices nascetur erat varius integer.",
     "imageName": "turtlerock"
 }
 
 */

struct Landmark: Hashable, Codable, Identifiable {
    //기본적인 정보들
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    //landmarkData.json에 포함된 데이터: 이미지 파일 이름
    private var imageName: String
    
    //이미지 파일 이름을 기반으로 이미지를 불러옴
    var image: Image {
        Image(imageName)
    }
    
    //landmarkData.json에 포한된 데이터: 지도 좌표계 값
    private var coordinates: Coordinates
    
    //MapKit 프레임워크에 좌표값을 적절히 적용시키기 위한 포맷팅
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    //지도 좌표계에 대한 구조체를 선언
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
