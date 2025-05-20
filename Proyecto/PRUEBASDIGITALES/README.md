Aqui estan los diferentes audios que se sacaron con diferentes codigos de python para analizar que tanta calidad tenian los audios:
Aqui una pequeña descripccion de cada uno

Estas son hechas sin ninguna clase de efecto, solamente entrada y salida de datos "puros"
Grabacion 1: Esta fue hecha con arduino, se nota una alta distorcion dGrel audio, como que se esta cortando hasta cierto punto
Grabacion 2: Solamente ruido por desconexcion del instrumento
Grabacion 3: Nada
Grabacion 4: Nada
Grabacion 5: Intento de tocar acordes, pero por el corte de la informacion se escucha con una alta distorsion
Grabacion 6: Mismo intento de grabacion de acordes, generando mucha distorsion del audio

A partir de aqui son intentos de grabacion con el ESP32 y con 16 bits:
Grabacion 7: Nada, casi sin ninguna señal
Grabacion 8: Nada 
Grabacion 9: Nada
Grabacion 10: Nada
Grabacion 11: Nada
Grabacion 12: Nada
Grabacion 13: Primer resultado del intento de grabacion de 16 bits, esta siendo con mucho ruido y con el audio en un tono demasiado bajo, pero perceptible
Grabacion 14: Solamente se obtiene el ruido del anterior resultado
Grabacion 15: Ruido
Grabacion 16: Ruido

A partir de aqui se intento con una modifiacion hacia el offset ya que se pensaba era el problema
AUDIO MUY FUERTE BAJAR EL VOLUMEN
Grabacion 17: Un ruido demasiado fuerte que no parece seguir ningun patron
Grabacion 18: Ruido fuerte
Grabacion 19: Ruido fuerte
Grabacion 20: Ruido fuerte
Grabacion 21: Ruido fuerte

Decision de usar 8 bits en lugar de 16 a partir de estos audios
Grabacion 22: Un sonido de guitarra claro, con algo de ruido tenue, asi que es aceptabale
Grabacion 23: No se introdujo señal para probar una audio puramente de ruido
Grabacion 24: Mas pruebas con la guitarra
Grabacion 25: RUIDO FUERTE otro intento de usar 16 bits con el nuevo codigo, sin resultados
Grabacion 26: Pruebas con diferentes rasguos
Grabacion 27: Ruido de prueba

Aqui se utiliza el codigo para modificar la onda
Grabacion 28: Esta fue una prueba de ruido, sin conectar nada
Grabacion 29: Aqui podemos apreciar el audio modificado por el codigo, el cual podemos escuchar que es mas fuerte y mas agudo por la modificacion que se le hicieron a los datos en el codigo
