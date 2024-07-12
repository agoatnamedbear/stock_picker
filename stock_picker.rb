list = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
  lowest_price = prices[0]
  lowest_index = 0
  profit = 0
  result = []

  prices.each_with_index do |price, index|
    if price < lowest_price
      lowest_price = price
      lowest_index = index
    end

    if price - lowest_price > profit
      profit = price - lowest_price
      result = [lowest_index, index]
    end
  end
  result
end
 p(stock_picker(list))
