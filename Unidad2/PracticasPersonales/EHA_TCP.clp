(defrule primera
    (not (inicio))
 =>
  (assert (A)) ;Es un protocolo de la capa de transporte 
  (assert (B)) ;confirma que se recibieron los paquetes
  (assert (C)) ;no confirma que se recibieron los paquete
  (assert (D)) ;numero de puerto
  (assert (E)) ;dirección IP de origen
  (assert (F)) ;puerto de origen
  (assert (G)) ;dirección IP destino
  (assert (H)) ;puerto destino
  ;(I) El protocolo es TCP
  ;(J) Esto es un socket
  ;(K) Es una conexion confiable
)

(defrule dos 
    (A)     
    (B)
=>
    (assert (I))
    (printout t "El protocolo es TCP" crlf )
)

(defrule tres 
    (E)
    (F)
    (G)
    (H)
=>
    (assert (J))
    (printout t "Esto es un socket" crlf)
)

(defrule cuatro 
    (I)
    (J)
=>
    (assert (K))
    (printout t "Es una conexion confiable" crlf)
)



