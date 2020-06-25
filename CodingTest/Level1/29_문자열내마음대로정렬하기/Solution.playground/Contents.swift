func solution(_ strings:[String], _ n:Int) -> [String] {
    var arr = strings.sorted() // 미리 사전순으로 정렬
    
    // n번째 글자 기준으로 정렬
    for i in 0..<arr.count {
        for j in 0..<arr.count - (i + 1) {
            if Array(arr[j])[n] > Array(arr[j + 1])[n] {
                arr.swapAt(j, j + 1)
            }
        }
    }
    
    return arr
}


print(solution(["sun","bed","car"], 1))
print(solution(["abce","abcd","cdx"], 2))

