//
//  TextConfiguration.swift
//  SwiftOpenAI
//
//  Created by James Rochabrun on 3/15/25.
//

import Foundation

public struct TextConfiguration: Codable {
  public let verbosity: Verbosity
    
    public init(verbosity: Verbosity) {
        self.verbosity = verbosity
    }
    
   public enum CodingKeys: String, CodingKey {
        case verbosity
    }
    
   public enum Verbosity: String, Codable {
        case low
        case medium
        case high
    }
}
