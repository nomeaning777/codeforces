n=gets.to_i
a=gets.split.map(&:to_i)
cnt=Hash.new
cnt.default=0
a.each{|i| cnt[i]+=1 }
ans=0
1.upto(100){|i| ans+=cnt[i]/2 }
p ans/2
