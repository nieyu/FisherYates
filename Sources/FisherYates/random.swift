#if os(OSX)
    import Darwin
    
    public let random: (Int) -> Int = { Int(arc4random_uniform(UInt32($0))) }
#else
    import Glibc
    
    public let random: (Int) -> Int = {
        while true {
            let x = Glibc.random() % $0
            let y = Glibc.random() % $0
            guard x == y else { return x }
        }
    }
#endif
