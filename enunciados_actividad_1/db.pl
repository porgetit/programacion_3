hombre(jose).
hombre(tomas).
hombre(jaime).
mujer(clara).
mujer(isabel).
mujer(ana).
mujer(patricia).

progenitor(clara, jose).
progenitor(tomas, jose).
progenitor(tomas, isabel).
progenitor(jose, ana).
progenitor(jose, patricia).
progenitor(patricia, jaime).

tio(X, Y) :- progenitor(Z, Y), progenitor(V, Z), progenitor(V, X).
dif(X, Y) :- X \= Y.


es_madre(X) :- progenitor(X, _), mujer(X).
es_padre(X) :- progenitor(X, _), hombre(X).
es_hijo(X) :- progenitor(_, X).
hermana_de(X, Y) :- progenitor(Z, X), progenitor(Z, Y), mujer(X), dif(X, Y).
abuelo_de(X, Y) :- progenitor(X, Z), progenitor(Z, Y), hombre(X).
abuela_de(X, Y) :- progenitor(X, Z), progenitor(Z, Y), mujer(X).
hermanos(X, Y) :- progenitor(Z, X), progenitor(Z, Y), dif(X, Y).
tia(X, Y) :- progenitor(Z, Y), hermana_de(X, Z), dif(X, Z).