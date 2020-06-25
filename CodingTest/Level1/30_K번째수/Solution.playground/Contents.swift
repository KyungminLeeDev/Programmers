import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    
    for i in commands {
        let start = i[0] - 1
        let end = i[1] - 1
        let k = i[2] - 1
        let temp = array[start...end].sorted()
        
        result.append(temp[k])
    }
    
    return result
}

solution([1,5,2,6,3,7,4], [[2,5,3],[4,4,1],[1,7,3]])



