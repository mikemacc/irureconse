import SwiftUI

@propertyWrapper
struct EnvironmentValue<T>: DynamicProperty {
    @Environment(\.value) var value
    
    var wrappedValue: T {
        return value
    }
}
