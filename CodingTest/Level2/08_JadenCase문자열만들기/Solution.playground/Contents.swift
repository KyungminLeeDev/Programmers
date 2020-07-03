import Foundation

func solution(_ s:String) -> String {
    var first = true
    var result = ""
    
    for c in s {
        // 공백은 그냥 넘어감
        if c == " " {
            result += " "
            first = true
            continue
        }
        
        if first {
            if let test = Int(String(c)) {
                // 첫 문자가 숫자라면 대문자 변환 안함
                result += String(c)
            } else {
                // 문자라면 대문자로 변혼
                result += String(c).uppercased()
            }
            first = false
        } else {
            // 첫 문자아니면 소문자로 변환
            result += String(c).lowercased()
        }
        
    }
    
    return result
}

var str = "3people unFollowed me"
print(solution(str))
