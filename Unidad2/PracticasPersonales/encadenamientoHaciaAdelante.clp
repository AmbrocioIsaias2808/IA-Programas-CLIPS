(defrule primera
    (not (inicio))
 =>
  (assert (primero))
  (assert (segundo))
  (assert (tercero))
  (assert (cuarto)))

(defrule dos
   (primero)
   (segundo)
 =>
  (assert (erre))
  (printout t "se genera el hecho erre" crlf))

(defrule tres
   (tercero) 
   (erre)
=>
  (assert (ese))
  (printout t "se genera el hecho ese" crlf))

(defrule cuatro
   (cuarto)
   (ese)
=>
  (printout t "fin del programa" crlf))