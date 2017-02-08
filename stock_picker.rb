#Implement a method stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days repres#enting the best day to buy and the best day to sell. Days start at 0.

def stock_picker(stocks)
profit = 0
best_buy = 0
best_sell = 0

for i in (0..stocks.length-1)
	buy_d = stocks[i]	
	for j in (i..stocks.length-1)
	sell_d = stocks[j]
	if ((sell_d - buy_d) > profit)
		profit = sell_d - buy_d
		best_buy = i
		best_sell = j

	end#end if
	end 

end#end for
result=[]
result << best_buy
result << best_sell
return result
puts "#{profit} for #{best_buy} : #{best_sell}"
end#end def


final_outcome = stock_picker([0,3,6,9,15,8,6,1,20])
puts final_outcome.inspect
