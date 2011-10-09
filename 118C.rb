k=gets.split[1].to_i
a=gets.split[0].bytes.to_a
n=a.length
cnt=Array.new(10,0)
n.times{|i|
	a[i]-=48
	cnt[a[i]]+=1
}
mincost=99999999
res=[]
10.times{|d|
	cost=0
	count=cnt[d]
	1.upto(9){|i|
		if count>=k then
			break
		end
		if d+i<=9 then
			if cnt[d+i]+count>=k then
				cost+=i*(k-count)
				count=k
			else
				count+=cnt[d+i]
				cost+=cnt[d+i]*i
			end
		end
		if d-i>=0 then
			if cnt[d-i]+count>=k then
				cost+=i*(k-count)
				count=k
			else
				count+=cnt[d-i]
				cost+=cnt[d-i]*i
			end
		end
	}
	if cost<mincost then
		mincost=cost
		res=[]
	end
	if cost==mincost then
		ans=Array.new(n,0)
		used=Array.new(n,0)
		count=0
		0.upto(9){|i|
			tar=d+i
			n.times{|j|
				if count>=k then 
					break
				end	
				if used[j]==0 && a[j]==tar then
					ans[j]=d
					count+=1
					used[j]=true
				end
			}
			tar=d-i
			(n-1).downto(0){|j|
				if count>=k then 
					break
				end	
				if used[j]==0 && a[j]==tar then
					ans[j]=d
					count+=1
					used[j]=true
				end
			}
		}
		n.times{|j|
			if used[j]==0 then
				ans[j]=a[j]
			end
		}
		res.push(ans)
	end
}
puts mincost
ans=res.min
ans.each{|i| print i}
puts
