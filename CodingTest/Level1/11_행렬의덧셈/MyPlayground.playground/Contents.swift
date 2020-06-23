func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var arrSum = [[Int]]()
    
    for i in 0..<arr1.count {
        var temp = [Int]()
        for j in 0..<arr1[i].count {
            temp.append(arr1[i][j] + arr2[i][j])
        }
        arrSum.append(temp)
    }
    
    return arrSum
}

print(solution([[1,2],[2,3]], [[3,4],[5,6]]))
print(solution([[1],[2]], [[3],[4]]))
