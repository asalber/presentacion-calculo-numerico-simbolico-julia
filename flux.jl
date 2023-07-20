# Ejemplo de red neuronal para aprender una recta con el paquete Flux
using Flux
# Recta a ajustar
f(x) = 4x + 2

# Conjunto de entrenamiento
julia> x_train, x_test = hcat(0:5...), hcat(6:10...)
([0 1 … 4 5], [6 7 … 9 10])

julia> y_train, y_test = actual.(x_train), actual.(x_test)
([2 6 … 18 22], [26 30 … 38 42])

