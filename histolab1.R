# Primero, instalamos y cargamos la librería ggplot2
#install.packages("ggplot2")
library(ggplot2)

# Creamos un vector con los errores del sistema de la tienda de ropa
errores <- c(1, 2, 1, 1, 3, 2, 2, 1, 3, 4, 2, 1, 2, 3, 4, 4, 5, 5, 5,
             4, 3, 2, 1, 1, 2, 3, 4, 5, 5, 4)

# Creamos un dataframe con los errores
df <- data.frame(errores)

# Creamos el histograma
g1<- ggplot(df, aes(x=errores)) +
  geom_histogram(binwidth=1, fill="#69b3a2", color="#e9ecef", alpha=0.9) +
  labs(title="Histograma de Distribución de Errores del 
       Sistema de la Tienda de Disfraces",
       x="Errores",
       y="Frecuencia") +
  theme_minimal()

print(g1)
