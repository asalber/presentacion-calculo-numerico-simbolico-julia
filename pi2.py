import time
start = time.time()
sum((-1.0)**i / (2.0*i+1.0) for i in reversed(range(10**8+1))) * 4
end = time.time()
print(end - start)