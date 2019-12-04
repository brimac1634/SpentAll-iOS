//
//  NetworkError.swift
//  SpentAll Expense Tracker
//
//  Created by Brian MacPherson on 3/12/2019.
//  Copyright © 2019 Brian MacPherson. All rights reserved.
//

import Foundation

public enum NetworkError : String, Error {
    case parametersNil = "Parameters were nil."
    case encodingFailed = "Parameter encoding failed."
    case missingURL = "URL is nil."
}
