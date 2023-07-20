function pi(n)
    pi = 0.0;
    op = 1
    for i in 0:n
        pi += op * 4 / (2i + 1)
        op *= -1
    end
    return pi  
end

@time pi(10^9)