import time

def pi(n): 
    pi = 0;
    op = 1
    for i in range(n):
        pi += op * 4 / (2 * i + 1)
        op *= -1
    return pi  



start = time.time()
print(pi(10**9))
end = time.time()
print(end - start)