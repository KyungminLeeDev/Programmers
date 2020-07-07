func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var prog = progresses
    var spd = speeds
    var count = 0
    var result = [Int]()
    
    while prog.isEmpty == false {
        if prog.first! < 100 {
            for i in 0..<prog.count {
                prog[i] += spd[i]
            }
            
            if count > 0 {
                result.append(count)
                count = 0
            }
            
        } else {
            prog.removeFirst()
            spd.removeFirst()
            count += 1
        }
    }
    
    if count > 0 {
        result.append(count)
    }
    
    return result
}

print(solution([93,30,55], [1,30,5]))

