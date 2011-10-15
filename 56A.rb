s=["ABSINTH", "BEER", "BRANDY", "CHAMPAGNE", "GIN", "RUM", "SAKE", "TEQUILA", "VODKA", "WHISKEY", "WINE","0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17"]
n=gets.to_i
ans=0
n.times{
	t=gets.split[0]
	if s.index(t)!=nil then
		ans+=1
	end
}
puts ans
