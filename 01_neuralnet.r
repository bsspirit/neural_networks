
library(neuralnet)

setwd("C:/work/R/neural/neural_networks")

# 数据集
head(iris)

# 神经元模型，没有隐藏层
nn <- neuralnet(Species=="setosa"~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
                data = iris,hidden = 0)
plot(nn)
nn

nn$result.matrix
nn$startweights 
nn$weights
head(nn$generalized.weights[[1]])
head(nn$data)
nn$call
nn$err.fct
nn$act.fct
nn$model.list
head(nn$covariate)
head(nn$response)
head(nn$net.result[[1]])

# 单层神经网络

n1 <- neuralnet(Species=="setosa"~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
                data = iris,hidden=1)
plot(n1)
n1$result.matrix


# 单层神经网络，多分类

n2a <- neuralnet(Species~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
                data = iris,hidden=1)
plot(n2a)

n2b <- neuralnet(Species~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
                data = iris,hidden=c(2))
plot(n2b)


# 多层神经网络，多分类
n3a <- neuralnet(Species~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
                 data = iris,hidden=c(1,1))
n3a$result.matrix


n3b <- neuralnet(Species~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
                data = iris,hidden=c(2,2))
n3b$result.matrix
plot(n3b)

n3c <- neuralnet(Species~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
                 data = iris,hidden=c(3,3))
n3c$result.matrix
plot(n3c)

n3d <- neuralnet(Species~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, 
                 data = iris,hidden=c(2,2,2))
n3d$result.matrix
plot(n3d)
