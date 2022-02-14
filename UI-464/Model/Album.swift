//
//  Album.swift
//  UI-464
//
//  Created by nyannyan0328 on 2022/02/14.
//

import SwiftUI

struct Album: Identifiable {
    var id = UUID().uuidString
    var name : String
    var author : String
    var cover : String
}

var albumns : [Album] = [

Album(name: "A", author: "B", cover: "p1"),
Album(name: "C", author: "D", cover: "p2"),
Album(name: "E", author: "F", cover: "p3"),
Album(name: "G", author: "H", cover: "p4"),
Album(name: "D", author: "F", cover: "p5"),
Album(name: "G", author: "Q", cover: "p6"),
Album(name: "V", author: "A", cover: "p7"),
Album(name: "C", author: "B", cover: "p8"),
Album(name: "X", author: "G", cover: "p9"),
Album(name: "S", author: "J", cover: "p10"),
Album(name: "Q", author: "T", cover: "p11"),
Album(name: "L", author: "R", cover: "p12"),
Album(name: "O", author: "W", cover: "p13"),





]
