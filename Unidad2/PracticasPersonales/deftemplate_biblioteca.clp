(deftemplate biblioteca
	(slot editorial)
	(slot titulo)
	(slot autor)
	(slot edicion))

(defrule encontrar
(biblioteca (editorial Diana | alfaguara)(titulo ?titulo)(autor garcia-marquez)(edicion ?edicion))
=>
(printout t "El libro " ?titulo ,"del autor " ?autor ,"Es de una editorial mexicana" crlf))

(deffacts existencias
(biblioteca (editorial alfaguara)(titulo la-silla-del-aguila)(autor carlos-fuentes)(edicion primera))
(biblioteca (editorial porrua)(titulo el-alquimista)(autor pablo-cohelo)(edicion primera))
(biblioteca (editorial Diana)(titulo El-amor-en-los-tiempos-del-colera)(autor garcia-marquez)(edicion segunda))
(biblioteca (editorial alfaguara)(titulo Don-quijote)(autor cervantes)(edicion primera))
(biblioteca (editorial porrua) (titulo el-manuscrito-encontrado-en-acra) (autor pablo-cohelo) (edicion primera))
(biblioteca (editorial algaguara) (titulo la-region-mas-transparente) (autor carlos-fuentes) (edicion segunda))
(biblioteca (editorial Diana) (titulo el-laberinto-de-la-soledad) (autor octavio-paz) (edicion primera))
(biblioteca (editorial Diana) (titulo el-general-en-su-laberinto) (autor garcia-marquez) (edicion primera))
(biblioteca (editorial porrua) (titulo pedro-paramo) (autor Juan-rulfo) (edicion primera)) 
(biblioteca (editorial alfaguara) (titulo el-libro-salvaje)(autor juan-villoro) (edicion primera))
(biblioteca (editorial alfaguara) (titulo once-minutos) (autor pablo-cohelo) (edicion segunda)))