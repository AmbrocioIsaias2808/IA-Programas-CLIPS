(defrule primera
    (not (inicio))
 =>
  (assert (esbelto))      ;(A) = Cuerpo Esbelto
  (assert (oido agudo))   ;(B) = Oido Agudo
  (assert (hocico corto)) ;(C) = Hocico corto
  (assert (garras))       ;(D) = Garras
  (assert (africa))       ;(E) = Vive en Africa
  (assert (pelo))         ;(F) = Poseen pelo
  (assert (regula temp))  ;(G) = Regula temperatura corporal
  (assert (toman leche))  ;(H) = Toman leche al nacer
  (assert (melena))       ;(I) = Tiene melena
  (assert (gen recesivo)) ;(J) = Gen Recesivo
)

(defrule segunda
    (pelo)
    (regula temp)
    (toman leche)
=> 
    (assert (mamifero))    ;(M) Es un mamifero
    (printout t "Es un mamifero" crlf)
)

(defrule tercera
    (mamifero)
    (esbelto)
    (oido agudo)
    (hocico corto)
    (garras)
=> 
    (assert (felino))    ;(N) Es un felino 
    (printout t "Es un felino" crlf)
)

(defrule cuarta
    (felino)
    (africa)
    (melena)
=> 
    (assert (leon))    ;(O) Es un leon
    (printout t "Es un leon" crlf)
)

(defrule quinta
    (gen recesivo)
    (leon)
=>
     (assert (leon blanco))    ;(Q) Es un leon blanco
    (printout t "Es un leon blanco" crlf)
)