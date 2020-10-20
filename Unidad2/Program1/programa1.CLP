(defrule iniciar
    (descargar SO)
    (bootear SO en memoria)
=>
    
    (assert (cambiar secuencia de arranque))
    (printout t "Instalador listo" crlf)    
)

(defrule BIOS
    (cambiar secuencia de arranque)
=>
    (assert (iniciar desde usb))
    (printout t "Cambiar secuencia de arranque" crlf)    
)

(defrule encender
    (iniciar desde usb)
=>
    (assert (iniciar instalacion))
    (printout t "Iniciar la instalacion del SO" crlf)
)

(defrule particionar
    (iniciar instalacion)
=>
    (assert (particionar disco))
    (assert (instalar SO))
    (assert (configurar SO))
    (printout t "Terminar la instalacion" crlf)
)

(defrule disfrutar
    (particionar disco)
    (instalar SO)
    (configurar SO)
=>
    (printout t "Disfrutar SO instalado" crlf)

)