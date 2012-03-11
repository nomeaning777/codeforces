ans,k,l,m,n,d=0,gets.to_i,gets.to_i,gets.to_i,gets.to_i,gets.to_i
1.upto(d){|i| ans+=1 unless i%k>0 && i%l>0 && i%m>0 && i%n>0}
p ans
