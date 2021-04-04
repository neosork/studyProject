func hasAnyMatches (list: [Int], condition: (Int) -> Bool) -> Bool{
    for item in list {
        if condition(item){
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 1
}

var numbers  = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

numbers.map({ (number: Int) -> Int in
    var result = 0
                if number%2 == 0{
                    result = number
                } else {
                    result = 0
                }
    return result
})

for num in numbers {
    print(num)
}
