func solution(_ arr:[Int]) -> [Int] {
    var temp = [Int]()
    guard arr.count > 1 else{
        temp.append(-1)
        return temp
    }

    let min = arr.min()

    for i in arr {
        if i != min {
            temp.append(i)
        }
    }

    return temp
}

print(solution([4,3,2,1]))
print(solution([10]))

