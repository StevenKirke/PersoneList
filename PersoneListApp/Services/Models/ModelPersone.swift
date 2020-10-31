//
//  ModelPersones.swift
//  PersoneListApp
//
//  Created by JARVIS on 29.10.2020.
//

import Foundation

// MARK: - PersoneElement

    struct ModelPersone: Decodable  {
        let id: Int
        let name, username, email: String
        let address: Address
        let phone, website: String
        let company: Company
    }

    // MARK: - Address
    struct Address: Decodable {
        let street, suite, city, zipcode: String
        let geo: Geo
    }

    // MARK: - Geo
    struct Geo: Decodable {
        let lat, lng: String
    }

    // MARK: - Company
    struct Company: Decodable {
        let name, catchPhrase, bs: String
    }

    typealias Persone = [ModelPersone]

    extension ModelPersone: Identifiable /* Идентифицировать уникальность объекта */ {
        
    }


