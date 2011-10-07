def min(a,b)
	if a>b then
		return b
	else
		return a
	end
end	
a=gets
b=gets
if a.length!=b.length then
	puts -1
	exit
end	

a=a.bytes.to_a
b=b.bytes.to_a

INF=999999999
d=Array.new(128){Array.new(128,INF)}
r1=Array.new(128){Array.new(128,INF)}
r2=Array.new(128){Array.new(128,INF)}

0.upto(127){|i|
	d[i][i]=0
}
n=gets.to_i
0.upto(n-1){|i|
	input=gets.split
	for j in 0..1
		input[j]=input[j].bytes.to_a
	end

	if d[input[0][0]][input[1][0]]>input[2].to_i then
		d[input[0][0]][input[1][0]]=input[2].to_i
	end
}
97.upto(122){|k|
	97.upto(122){|i|
		97.upto(122){|j|
			if d[i][j]>d[i][k]+d[k][j] then
				d[i][j]=d[i][k]+d[k][j]
			end
		}
	}
}
for j in 97..122
	for i in 97..122
		tres=INF
		for k in 97..122
			tres=min(tres,d[i][k]+d[j][k])
		end
		r1[i][j]=tres
		for k in 97..122
			if tres==d[i][k]+d[j][k] then
				r2[i][j]=k.chr
				break
			end
		end	

	end
end
res=0
str=""
q=a.length-2
0.upto(q){|i|
	res=res+r1[a[i]][b[i]]
}
if res>INF then
	puts -1
	exit
end	
puts res
0.upto(q){|i|
	print r2[a[i]][b[i]]
}
puts
