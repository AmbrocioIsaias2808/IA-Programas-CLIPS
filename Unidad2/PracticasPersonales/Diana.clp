(defrule primera
    (not (inicio))
 =>
  (assert (A)) ;notacion hexadecimal 
  (assert (B)) ;8 hextetos
  (assert (C)) ;128 bits
  (assert (D)) ;identifica un equipo host en la red local
  (assert (E)) ;rango de fe80 a febf
  ;(F) Es unicast
  ;(G) Es ipv6
  ;(H) Cumple los requerimientos para ser link local
)
(defrule dos 
    (A)
    (B)
    (C)
=>
    (assert (F))
    (printout t "Es IPV6" crlf )
)
(defrule tres 
    (D)
    (E)

=>
    (assert (G))
    (printout t "Es Unicast" crlf)
)
(defrule cuatro 
    (F)
    (G)
=>
    (assert (H))
    (printout t "Cumple los requerimientos para ser link local" crlf)
)