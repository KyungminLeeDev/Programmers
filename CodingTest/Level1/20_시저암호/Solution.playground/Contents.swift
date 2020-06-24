func solution(_ s:String, _ n:Int) -> String {
    var alphabet = [Character]()
    var Alphabet = [Character]()
    var data = [Character]()
    var result: String = ""
    
    for abc in "abcdefghijklmnopqrstuvwxyz" {
        alphabet.append(abc)
    }
    
    for abc in "ABCDEFGHIJKLMNOPQRSTUVWXYZ" {
        Alphabet.append(abc)
    }
    
    for ch in s {
        data.append(ch)
    }
    
    for i in 0..<data.count {
        if data[i] == " " {
            result.append(" ")
            continue
        }
        
        for j in 0..<26 {
            if data[i] == alphabet[j] {
                result.append(alphabet[(j + n) % 26])
            } else if data[i] == Alphabet[j] {
                result.append(Alphabet[(j + n) % 26])
            }
        }
    }
 
    return result
}

print(solution("AB", 1))
print(solution("z", 1))
print(solution("a B z", 4))
