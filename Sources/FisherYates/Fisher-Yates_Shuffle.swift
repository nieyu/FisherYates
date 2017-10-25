
#if swift(>=2.2) && !swift(>=3.0)
    public typealias Colletion = ColletionType
    
    public protocol MutableCollection: MutableColletionType {
        associatedType IndexDistance
    }
    extension Array: MutableCollection {
        public typealias IndexDistance = Int
    }
#endif


public extension Collection {
    func shuffled() -> [Iterator.Element] {
        var array = Array(self)
        array.shuffle()
        return array
    }
}

public extension MutableCollecion where Index == Int, IndexDistance == Int {
    mutating func shuffle() {
        guard count > 1 else { return }
        
        for i in 0..<count - 1 {
            let j = random(count -i) + i
            guard i != j else { continue }
            #if swift(>=4.0)
                swap(i, j)
            #else
                swap(&self[i], &self[j])
            #endif
        }
    }
}
