w,b=gets.split.map(&:to_i)
$dp=Array.new(1002){Array.new(1002){Array.new(2,-1)}}
#t=0 姫 t=1 ドラゴン
def solve(w,b,t)
	return 0 if b<0 || w<0
	return 0 if w+b==0
	return $dp[w][b][t] if $dp[w][b][t]>=0
	res=0.0
	if t==0 then
		res+=w.to_f/(w+b)
		res+=b.to_f/(w+b)*solve(w,b-1,1-t)
	else
		#Wを取る
		res=0
		#Bを取る
		tb=b-1
		tw=w
		if tb+tw==0 then 
			res=0
		else
			res+=b.to_f/(w+b)*tb.to_f/(tb+tw)*solve(w,b-2,1-t)
			res+=b.to_f/(w+b)*tw.to_f/(tb+tw)*solve(w-1,b-1,1-t)
		end
	end
	return $dp[w][b][t]=res
end
p solve(w,b,0)
