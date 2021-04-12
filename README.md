# Analizador de audio Minim

![N|Solid](https://i.gyazo.com/c224d3d8dabf6257b3f99b6dbc8c2cbb.png)

# Indice

  - Introducción
  - La aplicación
  - Decisiones de diseño
  - Tutorial
  - Notas del autor
  - Gif sobre el funcionamiento

# Informe

**Introducción**:

En esta séptima entrega hemos tenido que realizar un acercamiento a la representación y análisis del audio utilizando "Minim". Este ha sido nuestra segunda toma de contacto con el audio en processing, en esta ocasión es relacionada con el tratamiento y no la implementación práctica.

**La aplicación**:

Nuestra aplicación se fundamenta en una ventana segmentada en dos secciones completamente diferentes, aunque relacionadas entre si:
Sección superior:
  -Se fundamenta en una "matriz" cuadrada para la representación de la amplitud del audio. Esta representación se fundamenta en un total de 64 cuadrados, divididos en  
  en 8 filas con 8 columnas, las cuales cambian su tonalidad de negro a blanco en función de la canción u audio que se esté reproduciendo en ese momento. 
  Como apunte, si se llegan    a reproducir canciones con una ganancia muy alta, esta tabla puede verse algo mermada debido a que no tiene tanto recorrido como para representar sonido con una amplitud muy alta.

Sección inferior:

    -Una representación similar a la superior, no obstante en esta ocasión son líneas las que se encargan de representar lo mismo que nuestra parte superior, no obstante ahora se consigue vislumbrar mejor dado a la naturaleza de las líneas. Hemos decidido cambiar el color de las líneas para así poder distinguir mejor la separación de las mismas y poder apreciar mejor los cambios de las mismas.

![N|Solid](https://i.gyazo.com/7476228273e00ff13c9a1edb15267a58.png)

**Decisiones de diseño**:

Se ha decidido tener 2 partes separadas para poder ver el contraste en ambas y así poder indagar más en la libreria Minim, el primer acercamiento con los cuadrados puede parecer algo más simple pero ayuda a consolidar las primeras nociones del tratamiento, añadimos a eso la segunda iteración de añadir la parte inferior para poder ver ambas pistas enfrentadas, lo cual, nos aporta una visión más general de lo que está pasando con el audio que está siendo reproducido.

![N|Solid](https://i.gyazo.com/2a657512c409c0cf7870a8fe749f6930.png)

**Tutorial**
No hay tutorial necesario para esta aplicación.

  
**Notas del autor**

Aportamos una canción de prueba para el funcionamiento de la aplicación, no obstante, si decide utilizar otro audio para la comprobación del mismo, recomendamos no utilizar uno con notas o partes donde el audio tenga una amplitud excesiva.

Sentimos las molestias.

**Gif sobre el funcionamiento**


![Alt Text](https://i.gyazo.com/e1c85024c81267ead8bd09bb875640cd.gif)

