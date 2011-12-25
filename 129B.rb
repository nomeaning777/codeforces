n,m=gets.split.map(&:to_i)
g=Array.new(n){Array.new(n,0)}
cnt=Array.new(n,0)
m.times{
	a,b=gets.split.map(&:to_i)
	a-=1
	b-=1
	g[a][b]=1
	g[b][a]=1
	cnt[a]+=1
	cnt[b]+=1
}
ans=0
loop {
	t=0
	n.times{|i|
		t+=(cnt[i]>0?1:0)
	}
	if t<=1 then break end
	t=0
	n.times{|i|
		t+=(cnt[i]==1?1:0)
	}
	if t==0 then break end
	r=cnt.clone
	n.times{|i|
		if r[i]==1 then
			n.times{|j|
				if g[i][j]>0 then
					g[i][j]-=1
					g[j][i]-=1
					cnt[i]-=1
					cnt[j]-=1
				end
			}
		end
	}
	ans+=1
}
p ans
