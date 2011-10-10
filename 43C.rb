n=gets.to_i
a=gets.split.map(&:to_i)
def calc(x)
	a=0
	while x>0
		a+=x%10
		x/=10
	end
	a%=3
end
cnt=[0,0,0]
a.each{|i|
	cnt[calc(i)]+=1
}
p cnt[0]/2+[cnt[1],cnt[2]].min

