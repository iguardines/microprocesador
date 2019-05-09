nop xt8088
(nop.nop) xt8088

(nop.nop.nop) xt8088

Qué concepto interviene para lograr este punto 
interfaz fluida y composicion


punto 3.3
*Main> (add . lodv 22 . swap . lodv 10 ) xt8088

*Main> (add . lodv 22 . swap . lodv 10 ) xt8088
Microprocesador {a = 32, b = 0, pc = 4, etiqueta = [], memoria = []}


Microprocesador {acumuladorA = 10, acumuladorB = 0, pc = 1, etiqueta = [], memoria = []}
*Main> (divide . lodv 10) xt8088
Microprocesador {acumuladorA = 10, acumuladorB = 0, pc = 6, etiqueta = ["DIVISION BY ZERO"], memoria = []}
*Main> (divide .swap . lodv 10) xt8088
Microprocesador {acumuladorA = 0, acumuladorB = 0, pc = 2, etiqueta = [], memoria = []}

*Main> (divide. lodv 10  .swap . lodv 10) xt8088
Microprocesador {acumuladorA = 1, acumuladorB = 0, pc = 3, etiqueta = [], memoria = []}

*Main> str 2 5 xt8088
Microprocesador {acumuladorA = 0, acumuladorB = 0, pc = 0, etiqueta = [], memoria = [1,5,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]}
*Main> str 5 33 xt8088
Microprocesador {acumuladorA = 0, acumuladorB = 0, pc = 0, etiqueta = [], memoria = [1,2,3,4,33,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]}


Punto 4)

*MicroEntrega1> (nop . nop . nop) xt8088
Microprocesador {acumuladorA = 0, acumuladorB = 0, pc = 3, etiqueta = "", memoria = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}


--4.2 Punto 3
--LODV 5 tiene 
--como precondiciones: el acumulador A y B están en cero
--como post-condiciones: el acumulador A tiene valor 5 y el B cero.

*MicroEntrega1> xt8088
Microprocesador {acumuladorA = 0, acumuladorB = 0, pc = 0, etiqueta = "", memoria = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}
*MicroEntrega1> lodv 5 xt8088
Microprocesador {acumuladorA = 5, acumuladorB = 0, pc = 1, etiqueta = "", memoria = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}


-- Dado un procesador fp20 que tiene acumulador A con 7 y acumulador B con 24, al ejecutar SWAP el acumulador A debe quedar con 24 y el B con 7.
--precondicion
*MicroEntrega1> fp20
Microprocesador {acumuladorA = 0, acumuladorB = 0, pc = 0, etiqueta = "", memoria = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}

--postcondicion antes del swap
*MicroEntrega1> (lodv 7 .  swap .  lodv 24) fp20
Microprocesador {acumuladorA = 7, acumuladorB = 24, pc = 3, etiqueta = "", memoria = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}

--postcondicion despues del swap
*MicroEntrega1> (swap . lodv 7 .  swap .  lodv 24) fp20
Microprocesador {acumuladorA = 24, acumuladorB = 7, pc = 4, etiqueta = "", memoria = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}

--Luego de ejecutar el programa que suma 10 + 22, el acumulador A debe quedar en 32 y el B en 0.
*MicroEntrega1> (add . lodv 10 .  swap .  lodv 22) fp20
Microprocesador {acumuladorA = 32, acumuladorB = 0, pc = 4, etiqueta = "", memoria = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}


-- 4.3 
-- Dado el procesador at8086 que tiene los acumuladores en cero, el program counter en 0, sin mensaje de error y una memoria con los siguientes datos: [1..20], le ejecutamos la instrucción STR 2 5. Entonces el procesador at8086 debe quedar con un 5 en la posición 2: [1, 5, 3, 4, 5,... ]

*MicroEntrega1> at8086
Microprocesador {acumuladorA = 0, acumuladorB = 0, pc = 0, etiqueta = "", memoria = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]}
*MicroEntrega1> str 2 5 at8086
Microprocesador {acumuladorA = 0, acumuladorB = 0, pc = 0, etiqueta = "", memoria = [1,5,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]}

--LOD 2 de un procesador xt8088 con la memoria vacía (1024 posiciones con valores cero) debe dejar con cero el acumulador A (cero = ausencia de información)
*MicroEntrega1> fp20
Microprocesador {acumuladorA = 0, acumuladorB = 0, pc = 0, etiqueta = "", memoria = [0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]}
*MicroEntrega1> lod 2 fp20
Microprocesador {acumuladorA = 0, acumuladorB = 0, pc = 1, etiqueta = "", memoria = [0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0]}

--Ejecutar por consola la división 2 por 0 para el procesador xt8088 según el programa escrito arriba, esperamos el mensaje de error “DIVISION BY ZERO”, y un 6 en el program counter.
*MicroEntrega1> (divide . add) at8086
Microprocesador {acumuladorA = 0, acumuladorB = 0, pc = 6, etiqueta = "DIVISION BY ZERO", memoria = [1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0,10.0,11.0,12.0,13.0,14.0,15.0,16.0,17.0,18.0,19.0,20.0]}
