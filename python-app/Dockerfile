# FORM es con lo que se comienza y selecciona la imagen, en este caso la prefabricada node
FROM python

# WORKDIR es la ruta o path desde donde se ejecutaran todos los RUN
WORKDIR /app

# COPY es lo que se va a llevar al container, en este caso 
# el primer . o path - lo que se lleva de fuera del contenedor
# el segundo ./app o paht - el destino interno (si se pone como dirección relativa es afectada por WORKDIR ej ./)
COPY . /app

# CMD es lo mismo que RUN pero RUN es contra imagenes y CMD es solo contra containers
# CMD tiene que ser la última instrucción y falla si no tiene una (explicita o por defecto)
CMD ["python", "bmi.py"]