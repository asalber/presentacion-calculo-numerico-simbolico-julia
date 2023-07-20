using JuliaInterpreter

l = 1:10^8
@time sum(l)
@time @interpret sum(l)

@time sum([(-1)^i/(2i+1) for i = 0:10^8]) * 4