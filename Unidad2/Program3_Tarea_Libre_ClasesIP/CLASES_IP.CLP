(defrule inicio
  (not (rayo))  
=>
    (printout t "Tu ip esta en el rango de 0.0.0.0 - 127.255.255.255 (si/no)? " crlf)
    (assert (respuesta 1 (read)   )    )
)

(defrule clase_A_si
    (respuesta 1 si)
=>
    (printout t "Tu ip es clase A" crlf)    
)

(defrule clase_A_no
    (respuesta 1 no)
=>
    (printout  t "Tu ip esta en el rango de 128.0.0.0 - 192.255.255.255 (si/no)? " crlf )
    (assert (respuesta 2 (read) ) )
)

(defrule clase_B_si
    (respuesta 2 si)
=>
    (printout t "Tu ip es clase B" crlf)    
)

(defrule clase_B_no
    (respuesta 2 no)
=>
    (printout  t "Tu ip esta en el rango de 192.0.0.0 - 223.255.255.255 (si/no)? " crlf )
    (assert (respuesta 3 (read) ) )
)


(defrule clase_C_si
    (respuesta 3 si)
=>
    (printout t "Tu ip es clase C" crlf)    
)

(defrule clase_C_no
    (respuesta 3 no)
=>
    (printout  t "Tu ip esta en el rango de 224.0.0.0 - 239.255.255.255 (si/no)? " crlf )
    (assert (respuesta 4 (read) ) )
)


(defrule clase_D_si
    (respuesta 4 si)
=>
    (printout t "Tu ip es clase D" crlf)    
)

(defrule clase_D_no
    (respuesta 4 no)
=>
    (printout  t "Tu ip esta en el rango de 240.0.0.0 - 255.255.255.255 (si/no)? " crlf )
    (assert (respuesta 5 (read) ) )
)

(defrule clase_E_si
    (respuesta 5 si)
=>
    (printout t "Tu ip es clase E" crlf)    
)

(defrule clase_E_no
    (respuesta 5 no)
=>
    (printout  t "Esto no es una IPV4 valida..." crlf )
)
