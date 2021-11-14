//
//  File.swift
//  
//
//  Created by Данил Войдилов on 14.11.2021.
//

import Foundation
import SwiftUI

@resultBuilder
public struct ViewArrayBuilder<T: View> {
	
	@inlinable
	public static func buildBlock(_ components: [T]...) -> [T] {
		Array(components.joined())
	}
	
	@inlinable
	public static func buildArray(_ components: [[T]]) -> [T] {
		Array(components.joined())
	}
	
	@inlinable
	public static func buildEither(first component: [T]) -> [T] {
		component
	}
	
	@inlinable
	public static func buildEither(second component: [T]) -> [T] {
		component
	}
	
	@inlinable
	public static func buildOptional(_ component: [T]?) -> [T] {
		component ?? []
	}
	
	@inlinable
	public static func buildLimitedAvailability(_ component: [T]) -> [T] {
		component
	}
	
	@inlinable
	public static func buildExpression(_ expression: T) -> [T] {
		[expression]
	}
}
