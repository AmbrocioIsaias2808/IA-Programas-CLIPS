(defrule one
	(bits 128)
=>
	(assert (caracteres 32 hex) )
)

(defrule two
	(caracteres 32 hex)
=>
	(assert (hextetos 8))
	(printout t "relga dos genera el hecho 8 hextetos" crlf)
)

(defrule three
	(hextetos 8)
=>
	(assert (direccion ipv6))
)

(defrule four 
	(direccion ipv6)
=>
	(assert (primer hex fe80))
)

(defrule five
	(primer hex fe80)
=>
	(printout t "Es direccion 1pv6 link-local" crlf)
)
