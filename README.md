# ObserverKit
- Data Binding and value Observing Helper for Reactive Programming with MVVM pattern    

```swift
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
```
