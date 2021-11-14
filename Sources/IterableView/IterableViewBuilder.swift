//
//  IteraleBuilder.swift
//  IterableStruct
//
//  Created by Данил Войдилов on 29.04.2021.
//

import Foundation
import SwiftUI

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
@resultBuilder
public struct IterableViewBuilder {
	
	@inline(__always)
	public static func buildBlock() -> EmptyView {
		EmptyView()
	}
	
	@inline(__always)
	public static func buildBlock<F: IterableView>(_ component: F) -> F {
		component
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView>(_ f1: F1, _ f2: F2) -> PairView<F1, F2> {
		PairView(f1, f2)
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3) -> PairView<F1, PairView<F2, F3>> {
		PairView(f1, PairView(f2, f3))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4) -> PairView<F1, PairView<F2, PairView<F3, F4>>> {
		PairView(f1, PairView(f2, PairView(f3, f4)))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, F5>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, f5))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, F6>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, f6)))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, F7>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, f7))))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView, F8: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7, _ f8: F8) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, PairView<F7, F8>>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, PairView(f7, f8)))))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView, F8: IterableView, F9: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7, _ f8: F8, _ f9: F9) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, PairView<F7, PairView<F8, F9>>>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, PairView(f7, PairView(f8, f9))))))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView, F8: IterableView, F9: IterableView, F10: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7, _ f8: F8, _ f9: F9, _ f10: F10) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, PairView<F7, PairView<F8, PairView<F9, F10>>>>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, PairView(f7, PairView(f8, PairView(f9, f10)))))))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView, F8: IterableView, F9: IterableView, F10: IterableView, F11: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7, _ f8: F8, _ f9: F9, _ f10: F10, _ f11: F11) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, PairView<F7, PairView<F8, PairView<F9, PairView<F10, F11>>>>>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, PairView(f7, PairView(f8, PairView(f9, PairView(f10, f11))))))))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView, F8: IterableView, F9: IterableView, F10: IterableView, F11: IterableView, F12: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7, _ f8: F8, _ f9: F9, _ f10: F10, _ f11: F11, _ f12: F12) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, PairView<F7, PairView<F8, PairView<F9, PairView<F10, PairView<F11, F12>>>>>>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, PairView(f7, PairView(f8, PairView(f9, PairView(f10, PairView(f11, f12)))))))))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView, F8: IterableView, F9: IterableView, F10: IterableView, F11: IterableView, F12: IterableView, F13: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7, _ f8: F8, _ f9: F9, _ f10: F10, _ f11: F11, _ f12: F12, _ f13: F13) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, PairView<F7, PairView<F8, PairView<F9, PairView<F10, PairView<F11, PairView<F12, F13>>>>>>>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, PairView(f7, PairView(f8, PairView(f9, PairView(f10, PairView(f11, PairView(f12, f13))))))))))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView, F8: IterableView, F9: IterableView, F10: IterableView, F11: IterableView, F12: IterableView, F13: IterableView, F14: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7, _ f8: F8, _ f9: F9, _ f10: F10, _ f11: F11, _ f12: F12, _ f13: F13, _ f14: F14) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, PairView<F7, PairView<F8, PairView<F9, PairView<F10, PairView<F11, PairView<F12, PairView<F13, F14>>>>>>>>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, PairView(f7, PairView(f8, PairView(f9, PairView(f10, PairView(f11, PairView(f12, PairView(f13, f14)))))))))))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView, F8: IterableView, F9: IterableView, F10: IterableView, F11: IterableView, F12: IterableView, F13: IterableView, F14: IterableView, F15: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7, _ f8: F8, _ f9: F9, _ f10: F10, _ f11: F11, _ f12: F12, _ f13: F13, _ f14: F14, _ f15: F15) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, PairView<F7, PairView<F8, PairView<F9, PairView<F10, PairView<F11, PairView<F12, PairView<F13, PairView<F14, F15>>>>>>>>>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, PairView(f7, PairView(f8, PairView(f9, PairView(f10, PairView(f11, PairView(f12, PairView(f13, PairView(f14, f15))))))))))))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView, F8: IterableView, F9: IterableView, F10: IterableView, F11: IterableView, F12: IterableView, F13: IterableView, F14: IterableView, F15: IterableView, F16: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7, _ f8: F8, _ f9: F9, _ f10: F10, _ f11: F11, _ f12: F12, _ f13: F13, _ f14: F14, _ f15: F15, _ f16: F16) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, PairView<F7, PairView<F8, PairView<F9, PairView<F10, PairView<F11, PairView<F12, PairView<F13, PairView<F14, PairView<F15, F16>>>>>>>>>>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, PairView(f7, PairView(f8, PairView(f9, PairView(f10, PairView(f11, PairView(f12, PairView(f13, PairView(f14, PairView(f15, f16)))))))))))))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView, F8: IterableView, F9: IterableView, F10: IterableView, F11: IterableView, F12: IterableView, F13: IterableView, F14: IterableView, F15: IterableView, F16: IterableView, F17: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7, _ f8: F8, _ f9: F9, _ f10: F10, _ f11: F11, _ f12: F12, _ f13: F13, _ f14: F14, _ f15: F15, _ f16: F16, _ f17: F17) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, PairView<F7, PairView<F8, PairView<F9, PairView<F10, PairView<F11, PairView<F12, PairView<F13, PairView<F14, PairView<F15, PairView<F16, F17>>>>>>>>>>>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, PairView(f7, PairView(f8, PairView(f9, PairView(f10, PairView(f11, PairView(f12, PairView(f13, PairView(f14, PairView(f15, PairView(f16, f17))))))))))))))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView, F8: IterableView, F9: IterableView, F10: IterableView, F11: IterableView, F12: IterableView, F13: IterableView, F14: IterableView, F15: IterableView, F16: IterableView, F17: IterableView, F18: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7, _ f8: F8, _ f9: F9, _ f10: F10, _ f11: F11, _ f12: F12, _ f13: F13, _ f14: F14, _ f15: F15, _ f16: F16, _ f17: F17, _ f18: F18) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, PairView<F7, PairView<F8, PairView<F9, PairView<F10, PairView<F11, PairView<F12, PairView<F13, PairView<F14, PairView<F15, PairView<F16, PairView<F17, F18>>>>>>>>>>>>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, PairView(f7, PairView(f8, PairView(f9, PairView(f10, PairView(f11, PairView(f12, PairView(f13, PairView(f14, PairView(f15, PairView(f16, PairView(f17, f18)))))))))))))))))
	}
	
	@inline(__always)
	public static func buildBlock<F1: IterableView, F2: IterableView, F3: IterableView, F4: IterableView, F5: IterableView, F6: IterableView, F7: IterableView, F8: IterableView, F9: IterableView, F10: IterableView, F11: IterableView, F12: IterableView, F13: IterableView, F14: IterableView, F15: IterableView, F16: IterableView, F17: IterableView, F18: IterableView, F19: IterableView>(_ f1: F1, _ f2: F2, _ f3: F3, _ f4: F4, _ f5: F5, _ f6: F6, _ f7: F7, _ f8: F8, _ f9: F9, _ f10: F10, _ f11: F11, _ f12: F12, _ f13: F13, _ f14: F14, _ f15: F15, _ f16: F16, _ f17: F17, _ f18: F18, _ f19: F19) -> PairView<F1, PairView<F2, PairView<F3, PairView<F4, PairView<F5, PairView<F6, PairView<F7, PairView<F8, PairView<F9, PairView<F10, PairView<F11, PairView<F12, PairView<F13, PairView<F14, PairView<F15, PairView<F16, PairView<F17, PairView<F18, F19>>>>>>>>>>>>>>>>>> {
		PairView(f1, PairView(f2, PairView(f3, PairView(f4, PairView(f5, PairView(f6, PairView(f7, PairView(f8, PairView(f9, PairView(f10, PairView(f11, PairView(f12, PairView(f13, PairView(f14, PairView(f15, PairView(f16, PairView(f17, PairView(f18, f19))))))))))))))))))
	}
	
	@inline(__always)
	public static func buildOptional<F: IterableView>(_ component: F?) -> OptionalView<F> {
		OptionalView(component)
	}
	
	@inline(__always)
	public static func buildEither<F: IterableView, S: IterableView>(first: F) -> IfViewIterable<F, S> {
		.first(first)
	}
	
	@inline(__always)
	public static func buildEither<F: IterableView, S: IterableView>(second: S) -> IfViewIterable<F, S> {
		.second(second)
	}
	
	@inline(__always)
	public static func buildArray<F: IterableView>(_ components: [F]) -> ArrayView<F> {
		ArrayView(components)
	}
	
	@inline(__always)
	public static func buildExpression<F: IterableView>(_ expression: F) -> F {
		expression
	}
	
	@inline(__always)
	public static func buildExpression<F: View>(_ expression: F) -> SingleView<F> {
		SingleView(expression)
	}
	
	@inline(__always)
	public static func buildLimitedAvailability<F: IterableView>(_ component: F) -> F {
		component
	}
}
