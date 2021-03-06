//
// Recipe.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation


public struct Recipe: Codable {


    public var title: String?
    public var ingredients: String?
    public var thumbnail: String?

    public init(title: String?, ingredients: String?, thumbnail: String?) {
        self.title = title
        self.ingredients = ingredients
        self.thumbnail = thumbnail
    }

}

extension Recipe: Identifiable {
    
    public var id: String {
        title ?? UUID().uuidString
    }
    
    var titleTrimmed: String {
        (title ?? "").replacingOccurrences(of: "\n", with: "")
    }
}

extension Recipe: Equatable {
    
    public static func == (lhs: Recipe, rhs: Recipe) -> Bool {
        return
            lhs.title == rhs.title &&
            lhs.ingredients == rhs.ingredients
    }
}
