//
//  String+Helpers.swift
//
//  Created by Harshvardhan Arora on 07/03/2025.
//

extension String {
    public subscript(index: Int) -> Character {
        self[self.index(startIndex, offsetBy: index)]
    }

    public subscript(range: Range<Int>) -> String {
        let start = self.index(startIndex, offsetBy: range.lowerBound)
        let end = self.index(startIndex, offsetBy: range.upperBound)
        return String(self[start..<end])
    }
}
