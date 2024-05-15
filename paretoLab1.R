# Cargamos el paquete necesario
library(ggplot2)

# Creamos un dataframe con los datos
datos <- data.frame(
  Categoria = c("Sistema de Registro de Torneos", "Emparejamiento Automático de Jugadores", 
                "Registro y Visualización de Partidas", "Comunicación y Notificaciones", "Integración con sistemas de pago"),
  Prioridad = c("Medio", "Alto", "Medio", "Medio", "Bajo")
)

# Convertimos la prioridad a un factor ordenado
datos$Prioridad <- factor(datos$Prioridad, levels = c("Bajo", "Medio", "Alto"), ordered = TRUE)

# Creamos el gráfico de Pareto
pareto_plot <- ggplot(datos, aes(x = reorder(Categoria, -as.numeric(Prioridad)), y = as.numeric(Prioridad))) +
  geom_bar(stat = "identity", aes(fill = Prioridad)) +
  labs(x = "Categoría", y = "Prioridad") +
  ggtitle("Diagrama de Pareto") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Imprimimos el gráfico directamente utilizando el nombre del objeto
pareto_plot
