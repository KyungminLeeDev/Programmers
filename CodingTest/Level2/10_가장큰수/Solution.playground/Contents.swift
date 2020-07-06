import Foundation

func solution(_ numbers:[Int]) -> String {
    let temp = numbers.map { String($0) }
    let result = temp.sorted {$0 + $1 > $1 + $0}
        
    guard result[0] != "0" else {
        return "0"
    }
    
    return result.joined()
}


print(solution([6, 10, 2]))
print(solution([3, 30, 34, 5, 9]))
