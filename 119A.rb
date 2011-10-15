input=gets.split.map(&:to_i)
heap=input[2]
k=0
10000.times{|k|
        heap-=heap.gcd(input[k%2])
        if heap<0 then
                puts 1-k%2
                exit
        end
}
