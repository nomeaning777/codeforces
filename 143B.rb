t=gets.split[0]
minus=false
if t[0]=="-" then
	minus=true
	t=t.slice(1,t.length-1)
end
a,b=(t+'.0000.0').split('.')
res=""
a=a.to_i
b+="0000"
while a>0
	res=sprintf(",%03d",a%1000)+res;
	a/=1000
end
res=res.slice(1,res.length-1) if res[0]==',' 
res=res.slice(1,res.length-1) while res.size()>1 && res[0]=='0'
res="0" if res==""
res="$"+res+"."+b.slice(0,2)
res="("+res+")" if minus
puts res
