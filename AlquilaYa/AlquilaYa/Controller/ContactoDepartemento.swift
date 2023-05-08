//
//  ContactoDepartemento.swift
//  AlquilaYa
//
//  Created by Tismart on 7/05/23.
//

import Foundation

struct ContactoResponse: Decodable{
    let id: Int?
    let email: String?
    let address: Contacto?
}

struct Contacto: Decodable{
    let street: String?
    let suite: String?
    
}
