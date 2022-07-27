def stock_picker(stock)
    previous = 0
    days = []
    stock.each do |price|
      index = stock.index(price)
      for i in (index+1)..(stock.length-1) do
        profit = stock[i] - price
        if profit >= previous
          previous = profit
          profit = 0
          days.replace([index, i])
        end
      end
    end
    return days
end