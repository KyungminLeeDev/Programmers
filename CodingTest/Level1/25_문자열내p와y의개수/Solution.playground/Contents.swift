import Foundation

func solution(_ s:String) -> Bool
{
    var countP = 0, countY = 0
    
    for ch in s {
        switch ch {
        case "p", "P" :
            countP += 1
            break
        case "y", "Y" :
            countY += 1
            break
        default:
            break
        }
    }
    
    return (countP == countY) ? true : false
}

print(solution("pPoooyY"))
print(solution("Pyy"))
