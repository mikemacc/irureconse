extension View where Self: Equatable {
    func identify() -> some Identifiable {
        return Identify(self)
    }
}

struct Identify: Identifiable {
    let id = UUID()
    let value: Self
    
    init(_ value: Self) {
        self.value = value
    }
}
