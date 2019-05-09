module MicroEntrega1 where

data Microprocesador = Microprocesador {
	acumuladorA:: Int,
	acumuladorB:: Int,
	pc:: Int,
	etiqueta::String,
	memoria::[Int]
} deriving (Show)

xt8088 = Microprocesador 0 0 0 "" (take 1024 (repeat 0)) 
at8086 = Microprocesador 0 0 0 "" [1..20]
fp20 = Microprocesador 0 0 0 "" (take 32 (repeat 0))

nop = incpc

incpc micro = micro {
		pc = incpc_ micro
}

add micro = incpc micro {
	acumuladorA = acumuladorA micro + acumuladorB micro,
	acumuladorB = 0
}


--Punto 3)
--Implementar el siguiente programa, que permite sumar 10 + 22

-- LODV 10   // Cargo el valor 10 en el acumulador A
-- SWAP      // Cargo el valor 10 en el acumulador B (paso de A a B)
-- LODV 22   // Cargo el valor 22 en el acumulador A
-- ADD       // Realizo la suma y el resultado queda en el acu

programaSuma  = (add . lodv 22 . swap . lodv 10 ) xt8088

divide micro
           | acumuladorB micro == 0 = micro { etiqueta = "DIVISION BY ZERO", pc=6 }
           | otherwise = micro { acumuladorA = div (acumuladorA micro)  (acumuladorB micro), acumuladorB = 0}

swap micro = incpc micro {
	acumuladorA = acumuladorB micro,
	acumuladorB = acumuladorA micro
}

incpc_  = (+1) . pc 

lodv n micro = incpc micro {
	acumuladorA = n
} 

str pos val micro =incpc micro {
	memoria = agregarPosicion pos val (memoria micro) 
}

lod pos micro =incpc micro {
				acumuladorA = valorEnPosicion pos micro
		  }

agregarPosicion  0 valor lista = [valor] ++ drop 1 lista   
agregarPosicion posicion valor lista = take (posicion - 1) lista ++ [valor]  ++ drop posicion lista

valorEnPosicion pos micro = (head . drop (pos-1)) (memoria micro) 

mensajeError  = etiqueta