// ループを早めに抜ける (1)
// https://algo-method.com/tasks/1330

// str: sentence = "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum"
// char: target = 's'  // 検索する文字
// int: max_count = 10 // 検索する最大個数
// int: count = 0      // 現在見つかった個数
// for (初期値: index = 0, 条件: index < (sentence の長さ), 更新: index += 1)
//     if (count < max_count)
//         if (sentence[index] == target)
//             print(index)
//             count += 1
//         endif
//     endif
// endfor

let sentence = "Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum"
let target = "s"
let maxCount = 10
var count = 0
for (index, char) in sentence.enumerated() {
    if count < maxCount {
        if String(char) == target {
            print(index)
            count += 1
        }
    }
}
