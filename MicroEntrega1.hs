module MicroEntrega1 where

data Microprocesador = Microprocesador {
	acumuladorA:: Float,
	acumuladorB:: Float,
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

divide micro
           | acumuladorB micro == 0 = micro { etiqueta = "DIVISION BY ZERO", pc=6 }
           | otherwise = micro { acumuladorA = (acumuladorA micro / acumuladorB micro), acumuladorB = 0}

swap micro = incpc micro {
	acumuladorA = acumuladorB micro,
	acumuladorB = acumuladorA micro
}

incpc_  = (+1) . pc 

lodv n micro = incpc micro {
	acumuladorA = n
} 

str pos val micro = micro {
	memoria = agregarPosicion pos val (memoria micro) 
}

agregarPosicion  0 valor lista = [valor] ++ drop 1 lista   
agregarPosicion posicion valor lista = take (posicion - 1) lista ++ [valor]  ++ drop posicion lista


mensajeError  = etiqueta