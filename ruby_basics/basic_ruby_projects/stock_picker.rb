# pseudocode: track lowest price & day (time to buy)
# track highest price & day (time to sell)
# track greatest profit, first day, last day
def stock_picker(prices)
  picks = {
    buy_price: prices[0],
    buy_day: 0,
    sell_price: prices[-1],
    sell_day: prices.length - 1,
    profit: prices[-1] - prices[0]
  }
  prices.each_with_index do |price, day|
    if price < picks[:buy_price] and day > picks[:buy_day] and day < picks[:sell_day]
      picks[:buy_price] = price
      picks[:buy_day] = day
      picks[:profit] = picks[:sell_price] - price      
    end
    if price > picks[:sell_price] and day > picks[:buy_day] and day != 0
      picks[:sell_price] = price
      picks[:sell_day] = day
      picks[:profit] = price - picks[:buy_price]
    end
  end
  [picks[:buy_day], picks[:sell_day]]
end



p stock_picker([17,3,6,9,15,8,6,1,10])
#=> [1,4]  # for a profit of $15 - $3 == $12
# [best day to buy, best day to sell]

p stock_picker([9,1,7,14]) # [1,3]
p stock_picker([14,1,7,9]) # [1,3]
p stock_picker([1,14,7,9]) # [0,1]
p stock_picker([2,14,17,1]) # [0,2]
p stock_picker([3,1,8]) # [1,2]
p stock_picker([1])
p stock_picker([1,1,1])
# p stock_picker([])
p stock_picker([5,4,3,2,1])