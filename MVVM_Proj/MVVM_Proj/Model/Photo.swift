//
//  Photo.swift
//  MVVM_Proj
//
//  Created by Ahmed Fayeq on 01/02/2022.
//

import Foundation
struct Photos: Codable {
    let photos: [Photo]
}

struct Photo: Codable {
    let id: Int
    let name: String
    let description: String?
    let created_at: Date
    let image_url: String
    let for_sale: Bool
    let camera: String?
}
