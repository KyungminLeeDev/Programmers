import UIKit

func double(_ n: Int) -> Int {
    return n * n
}

func triple(_ n: Int) -> Int {
    return n * n * n
}

func solution(_ dartResult:String) -> Int {
    var scores = [Int]()
    var options = [1, 1, 1]
    var temp = ""
    var cipher = 0
    
    for i in dartResult {
        
        if i == "*" {
            switch cipher {
            case 1:
                options[0] = options[0] * 2
                break
            case 2:
                options[0] = options[0] * 2
                options[1] = options[1] * 2
                break
            case 3:
                options[1] = options[1] * 2
                options[2] = options[2] * 2
                break
            default:
                break
            }
            continue
        } else if i == "#" {
            options[cipher - 1] = options[cipher - 1] * (-1)
            continue
        }
        
    
        if i == "S" || i == "D" || i == "T" {
            
            if let score = Int(temp) {
                temp.removeAll()
                
                var el = 0
                if i == "D" {
                 el = double(score)
                } else if i == "T" {
                    el = triple(score)
                } else {
                    el = score
                }
                
                scores.append(el)
                cipher += 1
            }
        } else {
            temp.append(i)
        }
    }
    
    var sum = 0
    
    for i in 0...2 {
        sum += scores[i] * options[i]
    }
        
    return sum
}


print(solution("1S2D*3T")) // 37
print(solution("1D2S#10S")) // 9
