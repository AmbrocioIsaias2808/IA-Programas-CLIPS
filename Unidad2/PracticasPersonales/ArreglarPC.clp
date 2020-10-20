(defrule primera
    (not (inicio))
 =>
  (assert (PC Enciende))        ;(A) = La computadora enciende. 
  (assert (PC Lenta))           ;(B) = La computadora esta lenta.
  (assert (PC Conectada))       ;(C) = Esta conectada.
  (assert (Fuente Poder Ok))    ;(D) = La fuente de poder funciona bien.
  (assert (No virus))           ;(E) = Análisis por virus negativo.
  (assert (Inicia SO))          ;(F) = Inicia el sistema operativo.
  (assert (Sin Cambios))        ;(G) = Sin cambios.
)

(defrule segunda
    (PC Conectada)
    (PC Enciende)
    (Inicia SO)
    (PC Lenta)
=> 
    (assert (Posible virus))    ;(M) Posible existencia de virus
    (printout t "Posible existencia de virus" crlf)
)

(defrule tercera
    (Posible virus)
    (No virus)
=> 
    (assert (Optimizar SO))    ;(N) Optimizar el sistema operativo
    (printout t "Optimizar el sistema operativo" crlf)
)


(defrule cuarta
    (Optimizar SO)
    (Sin Cambios)
=> 
    (assert (Posible Falla Fuente))    ;(O) Posible falla en la fuente de poder
    (printout t "Posible falla en la fuente de poder" crlf)
)

(defrule quinta
    (Posible Falla Fuente)
    (Fuente Poder Ok)
=> 
    (assert (Fallas Disco Duro))    ;(P) Fallas en el Disco Duro
    (printout t "Fallas en el Disco Duro" crlf)
)


(defrule sexta
    (Fallas Disco Duro)
=> 
    (assert (Remplazo de Disco y reinstalacion SO))    ;(Q) Remplazo del HDD y re-instalación del S.O.
    (printout t "Toca cambiar el HDD y reinstalar el S.O." crlf)
)




