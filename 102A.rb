n,m=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
g=Array.new(n){Array.new(n,0)}
m.times{
	p,q=gets.split.map(&:to_i)
	g[p-1][q-1]=g[q-1][p-1]=1
}
ans=9999999999
0.upto(n-1){|i|
	(i+1).upto(n-1){|j|
		if g[i][j]==0 then
			next
		end
		(j+1).upto(n-1){|k|
			if g[i][k]==0 || g[j][k]==0 then
				next
			end
			ans=[ans,a[i]+a[j]+a[k]].min
		}
	}
}
puts (ans>=999999999)?-1:ans
