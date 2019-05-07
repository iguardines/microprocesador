data Microprocesador = Microprocesador {
	a:: Int,
	b::Int,
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
	a = a micro + b micro,
	b = 0
}

div micro = micro {
	--a = a micro / b micro,
	b = 0
}

swap micro = incpc micro {
	a = b micro,
	b = a micro
}

incpc_  = (+1) . pc 

lodv n micro = incpc micro {
	a = n
} 