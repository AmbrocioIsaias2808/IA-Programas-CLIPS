(defrule inicio
	(not(inicio))
	=>
	(printout t "Teclea una  letra: " )
	(assert (entrada (read))))

   ;creditos------------------------------------ 
(defrule c
	(entrada c)
	?f1 <- (entrada c)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada c (read)))
	(retract ?f1))

(defrule cr
	(entrada c r)
	?f1 <- (entrada c r)
         =>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada cr (read)))
        (printout t "acumulado hasta ahora :" ?f1)
        (retract ?f1))

(defrule cre
	(entrada cr e)
	?f1 <- (entrada cr e)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada cre (read)))
	(retract ?f1))

(defrule cred
	(entrada cre d)
	?f1 <- (entrada cre d)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada cred (read)))
	(retract ?f1))

(defrule credi
	(entrada cred i)
	?f1 <- (entrada cred i)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada credi (read)))
	(retract ?f1))

(defrule credit
	(entrada credi t)
	?f1 <- (entrada credi t)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada credit (read)))
	(retract ?f1))

(defrule credito
	(entrada credit o)
	?f1 <- (entrada credit o)
	=>
	(printout t "La palabra es correcta" crlf)
	(retract ?f1)
	(assert (error)))

;cliente----------------------------------------------------
(defrule cl
	(entrada c l)
	?f1 <- (entrada c l)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada cl (read)))
	(retract ?f1))
(defrule cli
	(entrada cl i)
	?f1 <- (entrada cl i)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada cli (read)))
	(retract ?f1))
(defrule clie
	(entrada cli e)
	?f1 <- (entrada cli e)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada clie (read)))
	(retract ?f1))
(defrule clien
	(entrada clie n)
	?f1 <- (entrada clie n)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada clien (read)))
	(retract ?f1))
(defrule client
	(entrada clien t)
	?f1 <- (entrada clien t)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada client (read)))
	(retract ?f1))
(defrule cliente
	(entrada client e)
	?f1 <- (entrada client e)
	=>
	(printout t "La palabra es correcta" crlf)
	(retract ?f1)
	(assert (error)))


;bienes ---------------------------------------    
(defrule b
	(entrada b)
	?f1 <- (entrada b)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada b (read)))
	(retract ?f1))
(defrule bi
	(entrada b i)
	?f1 <- (entrada b i)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada bi (read)))
	(retract ?f1))
(defrule bie
	(entrada bi e)
	?f1 <- (entrada bi e)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada bie (read)))
	(retract ?f1))
(defrule bien
	(entrada bie n)
	?f1 <- (entrada bie n)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada bien (read)))
	(retract ?f1))
(defrule biene
	(entrada bien e)
	?f1 <- (entrada bien e)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada biene (read)))
	(retract ?f1))
(defrule bienes
	(entrada biene s)
	?f1 <- (entrada biene s)
	=>
	(printout t "La palabra es correcta" crlf)
	(retract ?f1)
	(assert (error)))

;banco ------------------------------------------------------------------     
(defrule ba
	(entrada b a)
	?f1 <- (entrada b a)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada ba (read)))
	(retract ?f1))
(defrule ban
	(entrada ba n)
	?f1 <- (entrada ba n)
	=>
	(printout t "Teclea la siguiente letra: ")
	(assert(entrada ban (read)))
	(retract ?f1))

   
(defrule banc
	(entrada ban c)
	?f1 <- (entrada ban c)
	=>
	(printout t "Escribe la siguiente letra: ")
	(assert(entrada banc (read)))
	(retract ?f1))
(defrule banco
	(entrada banc o)
	?f1 <- (entrada banc o)
	=>
	(printout t "La palabra es correcta" crlf)
	(retract ?f1)
	(assert (error)))


;--Error
(defrule mistake
	(not (error))
	=>
	(printout t "La palabra es incorrecta" crlf))