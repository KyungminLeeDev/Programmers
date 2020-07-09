func solution(_ citations:[Int]) -> Int {
    let max = citations.max()!

    // 최대값부터 0까지 검사
    for h in (0...max).reversed() {
        let hOver = citations.filter{$0 >= h} // h번 이상 인용된 논문
        let hBelow = citations.filter{$0 <= h} // h번 이하 인용된 논문

        // h번 이상 인용된 논문이 h편 이상, 나머지 논문이 h번 이하로 인용됐다면
        if hOver.count >= h && hBelow.count <= h {
            return h
        }
    }

    return 0
}

print(solution([3,0,6,1,5]))  // 3
