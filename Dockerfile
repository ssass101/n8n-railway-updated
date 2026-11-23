# Version fija a proposito. Con `latest`, n8n se actualizaba solo cada vez que Railway
# reconstruia la imagen: el 12/11/2026 saltó a una version que validaba las claves de
# despliegue al arrancar y se cayo todo. Ahora la actualizacion es una decision.
#
# Para actualizar: cambiar el numero de abajo, commit, y Railway redespliega.
# Antes de subir de version conviene mirar el changelog de n8n y tener un backup.
# Version en produccion desde el 23/11/2026.
FROM n8nio/n8n:2.48.8

# n8n corre como root en este despliegue, que es como venia la imagen original.
# Con la base en Postgres y N8N_ENCRYPTION_KEY definida como variable de entorno,
# nada importante vive en el disco del contenedor.
USER root
