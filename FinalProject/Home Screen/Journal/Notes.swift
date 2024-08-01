//
//  Notes.swift
//  FinalProject
//
//  Created by Nadia Begum on 01/08/2024.
//

import Foundation
import UIKit

struct Note: Identifiable {
    var id: UUID
    var content: String
    var date: Date
    var image: UIImage
}
