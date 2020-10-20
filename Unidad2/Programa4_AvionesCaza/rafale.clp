;Si es una aeronave militar, es pequeño, veloz y maniobrable entonces es un avión caza
; A & B & C & D --> P (P) Avión Caza
;
;Si es un avión caza, tiene un cañon de 30mm, misiles aire-aire, misiles antibuque y de origen 
;frances entonces es un rafale
;P & F & G & H & E --> Q (Q) Es un rafale
;
;Si es un rafale y esta adaptado a un rafale M
;Q & I -> R

(defrule primera
    (not (inicio))
 =>
  (assert (aeronave militar));(A) = La computadora enciende. 
  (assert (pequeno))         ;(B) = La computadora esta lenta.
  (assert (veloces))         ;(C) = Esta conectada.
  (assert (maniobrabilidad)) ;(D) = La fuente de poder funciona bien.
  (assert (frances))         ;(E)

  (assert (canon 30mm))         ;(F)
  (assert (misiles aire-aire))  ;(G)
  (assert (misiles antibuque))  ;(H)
  (assert (portaviones))  ;(I)
)

(defrule segunda
    (aeronave militar)
    (pequeno)
    (veloces)
    (maniobrabilidad)
=> 
    (assert (avion caza))    
    (printout t "Es un avion caza" crlf)
)


(defrule tercera
    (avion caza)
    (canon 30mm)
    (misiles aire-aire)
    (misiles antibuque)
    (frances)
=> 
    (assert (rafale))   
    (printout t "Es un avion caza rafale" crlf)
)


(defrule cuarta
    (rafale)
    (portaviones)
=> 
    (assert (rafale M))   
    (printout t "Es un avion caza rafale M" crlf)
)