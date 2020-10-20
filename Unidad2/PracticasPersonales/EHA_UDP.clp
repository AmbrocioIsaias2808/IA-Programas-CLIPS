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
  ;(L) El protocolo es UDP
  ;(M) Los paquetes de datos se les llama datagramas
  ;(N) Si utiliza datagramas entonces le agrega un campo de encabezado de ocho octetos

)

(defrule dos 
    (A)
    (C)
=>
    (assert (L))
    (printout t "El protocolo es UDP" crlf )
)

(defrule tres 
    (L)
=>
    (assert (M))
    (printout t "los paquetes de datos se les llama datagramas" crlf)
)

(defrule cuatro 
    (M)
=>
    (assert (N))
    (printout t "Si utiliza datagramas entonces le agrega un campo de encabezado de ocho octetos" crlf)
)



