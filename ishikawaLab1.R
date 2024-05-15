# Verificar si el paquete está instalado
if (!requireNamespace("qcc", quietly = TRUE)) {
  # Si no está instalado, instalarlo
  install.packages("qcc")
  # Cargar el paquete recién instalado
  library(qcc)
} else {
  # Si está instalado, cargar el paquete
  library(qcc)
}
# Crea el Diagrama Ishikawa
cause.and.effect(
  cause = list(
    "Organización de Eventos" = c("Programación Inadecuada", "Falta de Espacios Disponibles", "Gestión de Recursos Insuficiente", "Promoción Deficiente"),
    "Interacción entre Jugadores" = c("Falta de Comunicación",  "Conflictos Personales", "Dificultades de Coordinación", "Desigualdad de Niveles"),
    "Funcionalidades de la Plataforma" = c("Fallos en el Sistema de Registro",  "Falta de Funcionalidades de Análisis", "Interfaz de Usuario Confusa", "Actualizaciones de Software Problemáticas"),
    "Comunicación y Divulgación" = c("Canales de Comunicación Ineficaces", "Información Desactualizada",  "Falta de Transparencia", "Escaso Compromiso de la Comunidad")),
  effect="Mal rendimiento del sistema")
