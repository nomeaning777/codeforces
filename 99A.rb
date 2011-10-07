n=gets
s=n.split('\n')[0].split('.')
s[0]=s[0].to_i

if s[0]%10 == 9 then
	puts "GOTO Vasilisa."
else
	if s[1].slice(0)>='5' then
		s[0]+=1
	end
	puts s[0]
end	

