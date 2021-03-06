//
//  PocketMon.swift
//  Pokémon's persimmon
//
//  Created by 신동규 on 2020/05/30.
//  Copyright © 2020 Mac circle. All rights reserved.
//

import UIKit

struct Pokemon:Codable {
    var name:String?
    var imageUrl:String?
    var id:Int?
    var weight:Int?
    var height:Int?
    var defense:Int?
    var attack:Int?
    var description:String?
    var type:String?
    var baseExperience:Int?
}
