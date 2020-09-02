//
//  Bindable.swift
//  ObserverKit
//
//  Created by SEONGJUN on 2020/09/02.
//  Copyright © 2020 SEONGJUN. All rights reserved.
//

import Foundation

public class Bindable<T> {
    
    public var value: T? {
        didSet {
            observer?(value)
        }
    }
    
    public init() { }
    
    public var observer: ((T?) -> Void)?
    
    public func bind(observer: @escaping (T?) -> Void) {
        self.observer = observer
    }
}

public class BehaviorBindable<T> {
    
    public var value: T {
        didSet {
            observer?(value)
        }
    }
    
    public init(value: T) {
        self.value = value
    }
    
    public var observer: ((T) -> Void)?
    
    public func bind(observer: @escaping (T) -> Void) {
        self.observer = observer
        self.observer?(value)
    }
}
