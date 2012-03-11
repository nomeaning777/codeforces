a1,a2,a3,a4=gets.split.map(&:to_i)
if a3==a4+1 then
    # 47が多い
    # 47を作っていく
    a1-=a3
    a2-=a3
    if a1<0 || a2<0 then #生成不能
        p -1
        exit
    end
    print "4"*a1+"47"*a3+"7"*a2
elsif a4==a3+1
    # 47が多い
    # 47を作っていく
    a1-=a4
    a2-=a4
    if a1<0 || a2<0 then #生成不能
        p -1
        exit
    end
    print "7"+"4"*a1+"47"*a3
    print "7"*a2
    print 4
elsif a3==a4
    #47優先解法
    a1-=a3+1
    a2-=a3
    if a1<0||a2<0 then
        a1+=a3+1
        a2+=a3

        a1-=a3
        a2-=a3+1
        if a1<0||a2<0 then
            p -1
            exit
        end
        #74優先解法
        print 7
        print "4"*(a1+1)
        print "74"*(a3-1)
        print "7"*(a2+1)
        exit
    end
    print "4"*a1
    print 4
    print "74"*(a3-1)
    print "7"*(a2+1)
    print 4
else
    puts "-1"
end

