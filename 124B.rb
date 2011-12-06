n,k=gets.split.map(&:to_i);
p=[];input=[];
n.times{
     s=gets.split[0]
     tmp=[]
     k.times{|i|
          tmp.push(s[i].to_i)
     }
     input.push(tmp)
}
ans=[]
k.times{|i|
     p.push(i);
}
p.permutation{|a|
     t=[]
     input.each{|i|
          tmp=0
          k.times{|j|
               tmp*=10
               tmp+=i[a[j]]
          }
          t.push(tmp)
     }
     ans.push(t.max-t.min)
}
p ans.min

