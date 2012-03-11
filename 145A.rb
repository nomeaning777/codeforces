a,b=gets.bytes.to_a,gets.bytes.to_a
cnt=[0,0]
a.length.times{|i| cnt[a[i]==52?1:0]+=1 if a[i]!=b[i]}
p cnt[0]+cnt[1]-cnt.min
