(defrule A
    (formado por rocas)
    (orbita eliptica)
=>
    (assert (planeta rocoso))
    (printout t "Regla A"crlf))

(defrule B
     (planeta rocoso)
=>
     (assert (oxido de hierro))
     (printout t "Regla B"crlf))

(defrule C
      (oxido de hierro)
=>
      (assert (color rojo))
      (assert (temperaturas bajas))
      (printout t "Regla C"crlf))

(defrule D
      (color rojo)
      (temperaturas bajas)
=>
      (printout t "Es el planeta Marte"crlf))
