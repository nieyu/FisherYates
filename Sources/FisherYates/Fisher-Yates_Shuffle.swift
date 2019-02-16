//#if swift(>=2.2) && !swift(>=3.0)
//    public typealias Colletion = ColletionType
//
//    public protocol MutableCollection: MutableColletionType {
//        associatedType IndexDistance
//    }
//    extension Array: MutableCollection {
//        public typealias IndexDistance = Int
//    }
//#endif


public extension Collection {
    func shuffled() -> [Iterator.Element] {
        var array = Array(self)
        array.shuffle()
        return array
    }
}

public extension MutableCollection {
    mutating func shuffle() {
        var i = startIndex
        var n = count
        
        while n > 1 {
            let j = index(i, offsetBy: random(n))
            swapAt(i, j)
            formIndex(after: &i)
            n -= 1
        }
    }
}
