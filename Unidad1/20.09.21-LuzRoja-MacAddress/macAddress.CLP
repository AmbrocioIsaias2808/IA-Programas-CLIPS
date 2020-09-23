(defrule primera
 (hexadecimal)
 (direccion fisica)
=>
 (assert (direccion mac))
 (printout t " formato hexadecimal"crlf))

(defrule segunda
 (direccion mac)
=>
 (assert (doce caracteres))
 (assert (varios formatos))
 (printout t " doce caracteres en formatos diferentes"crlf))

(defrule tercera
 (doce caracteres)
 (varios formatos)
=>
 (assert (identifica dispositivo))
 (printout t "la direccion mac identifica un dispositivo" crlf))

(defrule cuarta
 (identifica dispositivo)
=>
 (printout t " MAC significa media access control"crlf))
