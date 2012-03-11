n=gets.to_i;a=gets.split.map(&:to_i);
min=0;max=0;
0.upto(n-1){|i| min=i if a.min==a[i] }
(n-1).downto(0){|i|	max=i if a.max==a[i] }
p max+(n-1-min)-(( min<max )?1:0)
