func solution(_ phone_number:String) -> String {
    let count = phone_number.count - 4
    var temp: String = ""
    
    for (index, value) in phone_number.enumerated() {
        if index < count {
            temp.append("*")
        } else {
            temp.append(value)
        }
    }
    
    return temp
}

print(solution("01033334444"))
print(solution("027778888"))
