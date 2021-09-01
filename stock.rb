# Implementation of Stock Picker
# Price to buy at and sell at. 
# Should maximise profit
# Parameters is an array of prices
# Should return an array of the day to buy and the day to sell


def stock_picker(prices_arr)
    buy_price = prices_arr[0]
    buy_index = 0
    profit = 0
    range = [0, 0]

    prices_arr.each_with_index do |price, index|
        if price < buy_price
            buy_price = price
            buy_index = index
        next
        end

        if price - buy_price > profit
            profit = price - buy_price
            range = [buy_index, index]
        end
    end
    return range
end

puts(stock_picker([17,3,6,9,15,8,6,1,10]))