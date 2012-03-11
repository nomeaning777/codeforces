n=gets.to_i
a=gets.split.map(&:to_i)
arr=[a[0]]
ans=0
1.upto(a.length-1){|i|
	ans+=1 if arr.min>a[i]||arr.max<a[i] 
	arr.push(a[i])
}
p ans
