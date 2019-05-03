data Microprocesador = Microprocesador {
	a:: Int,
	b::Int,
	pc:: Int,
	etiqueta::[String],
	memoria::[String]
} deriving (Show)

xt8088 = Microprocesador 0 0 0 [] [] 

nop micro = micro {
		pc = incpc micro
}

add micro = micro {
	a = a micro + b micro,
	b = 0,
	pc = incpc micro
}

div micro = micro {
	--a = a micro / b micro,
	b = 0
}

swap micro = micro {
	a = b micro,
	b = a micro,
	pc = incpc micro
}

incpc  = (+1) . pc 

lodv n micro = micro {
	a = n,
	pc = incpc micro
} 