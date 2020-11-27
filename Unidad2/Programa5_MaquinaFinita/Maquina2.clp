(defrule inicio
	(not(inicio))
	=>
	(printout t "Teclea una  letra: " )
	(assert (entrada (read))))

   ;creditos------------------------------------ 
(defrule h
	(entrada h)
	?f1 <- (entrada h)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada h (read)))
	(retract ?f1))

(defrule ho
	(entrada h o)
	?f1 <- (entrada h o)
         =>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada ho (read)))
        (retract ?f1))

;hola
(defrule hol
	(entrada ho l)
	?f1 <- (entrada ho l)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada hol (read)))
	(retract ?f1))

(defrule hola
	(entrada hol a)
	?f1 <- (entrada hol a)
	=>
	(printout t "La palabra es correcta" crlf)
	(retract ?f1)
	(assert (error)))

;honda
(defrule hon
	(entrada ho n)
	?f1 <- (entrada ho n)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada hon (read)))
	(retract ?f1))
(defrule hond
	(entrada hon d)
	?f1 <- (entrada hon d)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada hond (read)))
	(retract ?f1))
(defrule honda
	(entrada hond a)
	?f1 <- (entrada hond a)
	=>
	(printout t "La palabra es correcta" crlf)
	(retract ?f1)
	(assert (error)))


;hotel ---------------------------------------    
(defrule hot
	(entrada ho t)
	?f1 <- (entrada ho t)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada hot (read)))
	(retract ?f1))
(defrule hote
	(entrada hot e)
	?f1 <- (entrada hot e)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada hote (read)))
	(retract ?f1))
(defrule hotel
	(entrada hote l)
	?f1 <- (entrada hote l)
	=>
	(printout t "La palabra es correcta" crlf)
	(retract ?f1)
	(assert (error)))


;--Error
(defrule mistake
	(not (error))
	=>
	(printout t "La palabra es incorrecta" crlf))