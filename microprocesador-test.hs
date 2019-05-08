nop xt8088
(nop.nop) xt8088

(nop.nop.nop) xt8088

Qué concepto interviene para lograr este punto 
interfaz fluida y composicion


punto 3.3
*Main> (add . lodv 22 . swap . lodv 10 ) xt8088

*Main> (add . lodv 22 . swap . lodv 10 ) xt8088
Microprocesador {a = 32, b = 0, pc = 4, etiqueta = [], memoria = []}


Microprocesador {acumuladorA = 10.0, acumuladorB = 0.0, pc = 1, etiqueta = [], memoria = []}
*Main> (divide . lodv 10) xt8088
Microprocesador {acumuladorA = 10.0, acumuladorB = 0.0, pc = 6, etiqueta = ["DIVISION BY ZERO"], memoria = []}
*Main> (divide .swap . lodv 10) xt8088
Microprocesador {acumuladorA = 0.0, acumuladorB = 0.0, pc = 2, etiqueta = [], memoria = []}
*Main> (divide. load 10  .swap . lodv 10) xt8088

<interactive>:14:10: Not in scope: ‘load’
*Main> (divide. lodv 10  .swap . lodv 10) xt8088
Microprocesador {acumuladorA = 1.0, acumuladorB = 0.0, pc = 3, etiqueta = [], memoria = []}

*Main> str 2 5 xt8088
Microprocesador {acumuladorA = 0.0, acumuladorB = 0.0, pc = 0, etiqueta = [], memoria = [1,5,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]}
*Main> str 5 33 xt8088
Microprocesador {acumuladorA = 0.0, acumuladorB = 0.0, pc = 0, etiqueta = [], memoria = [1,2,3,4,33,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]}