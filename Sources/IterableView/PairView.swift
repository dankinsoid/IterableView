//
//  PairView.swift
//  IterableStruct
//
//  Created by Данил Войдилов on 29.04.2021.
//

import Foundation
import SwiftUI

public struct PairView<F, S> {
	public var _0: F
	public var _1: S
	
	public init(_ first: F, _ second: S) {
		_0 = first
		_1 = second
	}
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension PairView: View where F: View, S: View {
	public var body: some View {
		Group {
			_0
			_1
		}
	}
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension PairView: IterableViewType where F: IterableViewType, S: IterableViewType {
	
	public var count: Int {
		_0.count + _1.count
	}
	
	public func iterate<V: IterableViewVisitor>(with visitor: V, reversed: Bool) -> Bool {
		switch reversed {
		case true:
			return _1.iterate(with: visitor, reversed: true) && _0.iterate(with: visitor, reversed: true)
		case false:
			return _0.iterate(with: visitor, reversed: false) && _1.iterate(with: visitor, reversed: false)
		}
	}
}

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension PairView: IterableView where F: IterableView, S: IterableView {
	
	@IterableViewBuilder
	public func subrange(at range: Range<Int>) -> some IterableView {
		if range.upperBound < _0.count {
			_0.subrange(at: range)
		} else if range.lowerBound >= _0.count {
			_1.subrange(at: range.plus(-_0.count))
		} else {
			PairView<F.Subview, S.Subview>(
				_0.subrange(at: range.clamped(to: 0..<_0.count)),
				_1.subrange(at: range.plus(-_0.count).clamped(to: 0..<_1.count))
			)
		}
	}
}

extension Range where Bound == Int {
	func plus(_ count: Int) -> Range {
		(lowerBound + count)..<(upperBound + count)
	}
}
