# Ejemplo de red neuronal para aprender una recta con el paquete Flux
using Flux
# Recta a ajustar
f(x) = 4x + 2

# Conjunto de entrenamiento y test
x_train, x_test = hcat(0:5...), hcat(6:10...)
y_train, y_test = f.(x_train), f.(x_test)

# Diseño del modelo
model = Dense(1 => 1)
model.weight
model.bias
# Alternativa como función predictiva
predict = Dense(1 => 1)

# Predicciones a priori (poco precisas)
predict(x_train)

# Definición de la función de pérdida
using Statistics
loss(model, x, y) = mean(abs2.(model(x) .- y));
loss(predict, x_train, y_train)

# Entrenamiento de la red
using Flux: train!
opt = Descent()
data = [(x_train, y_train)]
# Pesos iniciales
predict.weight, predict.bias
# Un paso de entrenamiento
train!(loss, predict, data, opt)
# La función de pérdida disminuye (mejora la precisión)
loss(predict, x_train, y_train)
# Los pesos cambian
predict.weight, predict.bias
# Iteración del enternamiento
for epoch in 1:2000
    train!(loss, predict, data, opt)
end
# La función de pérdida disminuye (mejora la precisión)
loss(predict, x_train, y_train)
# Los pesos cambian
predict.weight, predict.bias
# Evaluación del modelo
predict(x_test)
y_test