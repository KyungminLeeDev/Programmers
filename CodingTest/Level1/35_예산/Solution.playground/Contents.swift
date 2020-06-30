import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var departments = d
    var sum = 0
    var count = 0
    
    departments.sort()
    
    for i in departments {
        if sum + i <= budget {
            sum += i
            count += 1
        }
    }
    
    return count
}

print(solution([1,3,2,5,4], 9))
print(solution([2,2,3,3], 10))
print(solution([2], 1))
