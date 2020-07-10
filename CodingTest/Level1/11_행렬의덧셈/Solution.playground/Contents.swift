//func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
//    var arrSum = arr1
//
//    for i in 0..<arr1.count {
//        for j in 0..<arr1[i].count {
//            arrSum[i][j] = arr1[i][j] + arr2[i][j]
//        }
//    }
//
//    return arrSum
//}

// 다시 푼 코드
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = arr1
    
    for i in 0..<arr1.count {
        for j in 0..<arr1[i].count {
            result[i][j] += arr2[i][j]
        }
    }
    
    return result
}

print(solution([[1,2],[2,3]], [[3,4],[5,6]])) // [[4,6],[7,9]]
print(solution([[1],[2]], [[3],[4]]))   // [[4],[6]]
