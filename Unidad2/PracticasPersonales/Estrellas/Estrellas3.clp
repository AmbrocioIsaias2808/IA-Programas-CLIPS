(deftemplate estrella
    (slot nombre)
    (slot clase)
    (slot magnitud)
    (slot distancia)
    (slot color)
)

(deffacts estrellas
    (estrella (nombre Sirius)      (clase A)   (magnitud 1 )    (distancia 8.8)        (color no-definido))
    (estrella (nombre Canopus)     (clase F)   (magnitud -3)   (distancia 98  )        (color no-definido))
    (estrella (nombre Arturus)     (clase K)   (magnitud 0 )    (distancia 36 )        (color no-definido))
    (estrella (nombre Vega)        (clase A)   (magnitud 1 )    (distancia 26 )        (color no-definido))
    (estrella (nombre Capella)     (clase G)   (magnitud -1)   (distancia 46  )        (color Amarillo)   )
    (estrella (nombre Rigel)       (clase B)   (magnitud -7)   (distancia 880 )        (color no-definido))
    (estrella (nombre Procyon)     (clase F)   (magnitud 3 )    (distancia 11 )        (color no-definido))
    (estrella (nombre Betelgeuse)  (clase M)   (magnitud -5)   (distancia 490 )        (color Rojo)       )
    (estrella (nombre Altair)      (clase A)   (magnitud 2 )    (distancia 16 )        (color no-definido))
    (estrella (nombre Aldebaran)   (clase K)   (magnitud -1)   (distancia 68  )        (color no-definido))
    (estrella (nombre Spica)       (clase B)   (magnitud -3)   (distancia 300 )        (color no-definido))
    (estrella (nombre Antares)     (clase M)   (magnitud -4)   (distancia 250 )        (color no-definido))
    (estrella (nombre Pollux)      (clase K)   (magnitud 1 )    (distancia 35 )        (color no-definido))
    (estrella (nombre Deneb)       (clase A)   (magnitud -7)   (distancia 1630)        (color no-definido))
)

(defrule busqueda
    (estrella (nombre ?nombre)(clase ?clase&~A)(magnitud ?magnitud)(distancia ?distancia)(color ?color&no-definido|Rojo))
=>
    (printout t "Estrella: " ?nombre  "| Clase: " ?clase  "| Magnitud: " ?magnitud  "| Distancia: " ?distancia "| Color: " ?color crlf)
)
