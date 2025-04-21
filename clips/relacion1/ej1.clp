(deftemplate persona
    (slot nombre (type STRING) (default ?NONE))
    (slot apellidos (type STRING) (default ?NONE))
    (slot color-ojos (type SYMBOL) (default marron))
    (slot altura (type FLOAT) (default 1.70))
    (slot edad (type INTEGER) (default 105))
)