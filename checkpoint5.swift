import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let oddLuckyNumbers = luckyNumbers.filter { $0 % 2 != 0 }

//print(oddLuckyNumbers)

let sortedOddLuckyNumbers = oddLuckyNumbers.sorted { a, b in
  return a < b
}

//print(sortedOddLuckyNumbers)

let formated: [String] = sortedOddLuckyNumbers.map({ (num: Int) -> String in
  return "\(num) is a lucky number"
})

for fn in formated {
  print(fn)
}
