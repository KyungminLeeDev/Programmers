func solution(_ s:String) -> String {
    let str = s.split(separator: " ") // 공백으로 문자열 나눔
    let numbers = str.map { Int($0)! } // 정수로 변환
    var answer = ""
    
    answer += String(numbers.min()!)
    answer += " "
    answer += String(numbers.max()!)
    
    return  answer
}

solution("1 2 3 4")
solution("-1 -2 -3 -4")
solution("-1 -1")
