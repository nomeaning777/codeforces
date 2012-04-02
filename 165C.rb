k = gets.to_i
s = gets.split[0]
n = s.length
a = Array.new(n+1,0)

n.times do |i|
	a[i+1] = a[i] + ((s[i]=="1")?1:0)
end

cnt = Hash.new
cnt.default = 0

(n+1).times do |i|
	cnt[a[i]] += 1
end

ans = 0

(n+1).times do |i|
	if k>0
		ans += cnt[i]*cnt[i+k]
	else
		ans += cnt[i]*(cnt[i]-1)/2
	end
end
p ans
