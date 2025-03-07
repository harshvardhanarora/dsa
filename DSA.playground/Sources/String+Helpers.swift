//
//  String+Helpers.swift
//
//  Created by Harshvardhan Arora on 07/03/2025.
//

extension String {
    public subscript(index: Int) -> Character {
        self[self.index(startIndex, offsetBy: index)]
    }
}
