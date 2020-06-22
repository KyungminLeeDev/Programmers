func solution(_ x:Int, _ n:Int) -> [Int64] {
    var temp = [Int64]()

    for i in 1...n {
        temp.append(Int64(i * x))
    }

    return temp
}
