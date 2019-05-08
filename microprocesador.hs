data Microprocesador = Microprocesador {
	acumuladorA:: Float,
	acumuladorB:: Float,
	pc:: Int,
	etiqueta::[String],
	memoria::[String]
} deriving (Show)

xt8088 = Microprocesador 0 0 0 [] [] 

nop = incpc

incpc micro = micro {
		pc = incpc_ micro
}

add micro = incpc micro {
	acumuladorA = acumuladorA micro + acumuladorB micro,
	acumuladorB = 0
}

divide micro
           | acumuladorB micro == 0 = micro { etiqueta = ["DIVISION BY ZERO"], pc=6 }
           | otherwise = micro { acumuladorA = (acumuladorA micro / acumuladorB micro), acumuladorB = 0}

swap micro = incpc micro {
	acumuladorA = acumuladorB micro,
	acumuladorB = acumuladorA micro
}

incpc_  = (+1) . pc 

lodv n micro = incpc micro {
	acumuladorA = n
} 