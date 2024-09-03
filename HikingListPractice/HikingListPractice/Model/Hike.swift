//
//  Hike.swift
//  HikingListPractice
//
//  Created by Ajay Kumar on 03/08/24.
//

import Foundation


struct Hike: Identifiable, Hashable{
    
    let id = UUID()
    let name: String
    let miles: Double
    let image: String
    
    
}
