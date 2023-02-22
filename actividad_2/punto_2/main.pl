% Hechos
nacion_hostil(corea_del_sur).
arma(misil).
es_estadounidense(colonel_west).
vende(colonel_west, Nacion, Arma) :-
    arma(Arma),
    nacion_hostil(Nacion),
    es_estadounidense(colonel_west).

% Regla para determinar si alguien es un criminal
criminal(Persona) :-
    vende(Persona, Nacion, Arma),
    nacion_hostil(Nacion),
    arma(Arma),
    es_estadounidense(Persona).

% Consulta para verificar si el Coronel West es un criminal
?- criminal(colonel_west).
