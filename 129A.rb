n=gets.to_i
a=gets.split.map(&:to_i)
o=e=0
a.each{|i|
     if i % 2==0 then e+=1 else o+=1 end
}
if o % 2 == 0 then
     puts e
else
     puts o
end
