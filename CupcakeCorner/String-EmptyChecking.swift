//
//  String-EmptyChecking.swift
//  CupcakeCorner
//
//  Created by Juan Carlos Robledo Morales on 11/10/24.
//

import Foundation

extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
