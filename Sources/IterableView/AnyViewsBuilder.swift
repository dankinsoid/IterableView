//
//  File.swift
//  
//
//  Created by Данил Войдилов on 15.08.2021.
//

import SwiftUI

@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
public typealias AnyViewsBuilder = ViewArrayBuilder<AnyView>


@available(iOS 13.0, OSX 10.15, tvOS 13.0, watchOS 6.0, *)
extension ViewArrayBuilder where T == AnyView {
    
    @inlinable
    public static func buildExpression<V: View>(_ expression: V) -> [T] {
        [AnyView(expression)]
    }
}
