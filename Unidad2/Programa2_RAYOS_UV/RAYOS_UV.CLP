(defrule inicio
  (not (rayo))  
=>
(printout t "Es un tipo de radiacion ultravioleta si/no? "crlf)
(assert (ultravioleta (read)   )    )
)

(defrule segunda
   (ultravioleta si)
=>
    (printout t "Son rayos de longitud de onda corta si/no ?" crlf)
    (assert (ondacorta (read)  )   )

)

(defrule tercera
  (ondacorta si)
=>
(printout t "Son rayos UVC"crlf)
)

(defrule cuarta
  (ondacorta no)
=>
    (printout t "son rayos de longitud de onda media si/no"crlf)
    (assert (ondamedia (read)  )  )
)

(defrule quinta
   (ondamedia si)
=>
    (printout t "son rayos UVB" crlf)
)

(defrule sexta
  (ondamedia no)
=>
    (printout t "Son rayos de longitud de onda larga si/no?"crlf)
    (assert (ondalarga (read)   )  )
)

(defrule septima
    (ondalarga si)
=>
    (printout t "son rayos UVA " crlf)
)

(defrule octava
  (ondalarga no)
=>
    (printout t "Es otro tipo de rayo"crlf)
)

(defrule novena
 (ultravioleta no)
=>
    (printout t "Es otro tipo de radiacion"crlf)
)