passaro(tweety).
peixe(goldie).
minhoca(molie).

gosta(passaro, minhoca).
gosta(gato, peixe).
gosta(gato, passaro).

amigos(X, Y) :- gosta(X, Y), gosta(Y, X).

gato(silvester).
gosta(silvester, peixe).
gosta(silvester, passaro).

come(X, Y) :- gosta(X, Y).

nome(silvester, 'Silvester').



% O que o silvester come?
?- gosta(silvester, X).
