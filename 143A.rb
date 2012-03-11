r1,r2=gets.split.map(&:to_i)
c1,c2=gets.split.map(&:to_i)
d1,d2=gets.split.map(&:to_i)
1.upto(9){|i|
	1.upto(9){|j|
		next if i==j
		1.upto(9){|k|
			next if i==k
			next if j==k
			1.upto(9){|l|
				next if l==i
				next if l==j
				next if l==k
				next unless i+j==r1
				next unless k+l==r2
				next unless i+l==d1
				next unless j+k==d2
				next unless i+k==c1
				next unless j+l==c2
				p i
				p j
				p k
				p l
				exit
			}
		}
	}
}
puts "-1"
