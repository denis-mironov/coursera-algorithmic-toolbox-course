# As we already know, a natural greedy strategy for the change problem does not work correctly for any set of denominations. For example, if the available denominations are 1, 3, and 4, the greedy algorithm will change 6 cents using three coins (4 + 1 + 1) while it can be changed using just two coins (3 + 3). Your goal now is to apply dynamic programming for solving the Money Change Problem for denominations 1, 3, and 4.

### Problem Description
#Input Format. Integer money.
#Output Format. The minimum number of coins with denominations 1, 3, 4 that changes money.

result = gets.chomp.to_i
coins = [1,3,4]
all_minimums = {}

for m in 0..result do # для всего набора цифр от 0 и до result
  local_min = 0
  previous_min = {}
  coins.each do |coin| # для каждой из монет
    if m >= coin # только в том случае, если размениваемая сумма больше или равно номиналу монеты
      previous_min[m - coin] = all_minimums[m - coin]
      min = previous_min.values.min
      local_min = min + 1
    end
  end

  all_minimums[m] = local_min
end

puts local_min
