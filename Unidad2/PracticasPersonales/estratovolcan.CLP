(defrule superficie
    (abertura en superficie terrestre)
=>
    (assert (arroja lava))
    (assert (arroja cenizas))
    (printout t"primera regla"crlf)
)

(defrule cenizas
    (arroja lava)
    (arroja cenizas)
=>
    (assert (arroja gases calientes))
     (printout t"segunda regla"crlf)
)

(defrule crater
    (arroja gases calientes)
 =>
    (assert (camara de magma))
    (assert (crater))
    (printout t"tercera regla"crlf)
)

(defrule chimenea
    (camara de magma)
    (crater)
=>
    (assert (chimenea))
    (printout t "cuarta regla"crlf)
)

(defrule erupcion
    (chimenea)
=>
    (assert (hace erupcion con frecuencia))
    (assert (expulsa fumarolas))
    (printout t "quinta regla"crlf)
)

(defrule activo
    (hace erupcion con frecuencia)
    (expulsa fumarolas)
=>
    (assert (volcan activo))
)    

(defrule capas
    (volcan activo)
=>
    (assert (capas sucesivas de lava))
    (assert (capas sucesivas de ceniza))
)

(defrule estratovolcan
    (capas sucesivas de lava)
    (capas sucesivas de ceniza)
=>
    (printout t "Es un estratovolcan"crlf)
)        


















