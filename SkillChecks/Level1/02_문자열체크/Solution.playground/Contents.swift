func solution(_ s:String) -> Bool {
    guard s.count == 4 || s.count == 6 else {
        return false
    }

    for element in s {
        guard let num = Int(String(element)) else {
            return false
        }
    }

    return true
}

print(solution("a234"))
print(solution("1234"))
