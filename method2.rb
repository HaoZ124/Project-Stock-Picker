def stock_picker(stock)
    return [stock.index(stock.min), stock.index(stock.max)]
end