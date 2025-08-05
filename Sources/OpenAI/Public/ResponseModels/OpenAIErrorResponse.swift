//
//  OpenAIErrorResponse.swift
//
//
//  Created by James Rochabrun on 11/13/23.
//

import Foundation

// {
//  "error": {
//    "message": "Invalid parameter: messages with role 'tool' must be a response to a preceeding message with 'tool_calls'.",
//    "type": "invalid_request_error",
//    "param": "messages.[2].role",
//    "code": null
//  }
// }

public struct OpenAIErrorResponse: Decodable, LocalizedError {
  public let error: Error

  public struct Error: Decodable {
    public let message: String?
    public let type: String?
    public let param: String?
    public let code: String?
  }
    
    public var errorDescription: String? {
        return error.message
    }
}

public struct VaporErrorResponse: Decodable, LocalizedError {
    public let error: Bool
    public let reason: String
    
    public var errorDescription: String? {
        return reason
    }
}
