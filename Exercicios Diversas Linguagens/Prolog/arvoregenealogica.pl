homem(abraham).
homem(herb).
homem(homer).
homem(bart).
homem(maridoSelma).

mulher(mona).
mulher(marge).
mulher(patty).
mulher(selma).
mulher(lisa).
mulher(maggie).

% Casamentos
casados(abraham, mona).
casados(homer, marge).
casados(maridoSelma, selma).

% Relações de parentesco
pai(abraham, homer).
mae(mona, homer).

pai(homer, bart).
pai(homer, lisa).
pai(homer, maggie).

mae(marge, bart).
mae(marge, lisa).
mae(marge, maggie).

irma(marge, patty).
irma(marge, selma).

% Regras
mae(X, Y) :- mulher(X), progenitor(X, Y).
pai(X, Y) :- homem(X), progenitor(X, Y).
progenitor(X, Y) :- pai(X, Y); mae(X, Y).

irmao(X, Y) :- homem(X), progenitor(Z, X), progenitor(Z, Y), X \= Y.
irma(X, Y) :- mulher(X), progenitor(Z, X), progenitor(Z, Y), X \= Y.

tio(X, Y) :- irmao(X, Z), progenitor(Z, Y).
tia(X, Y) :- irma(X, Z), progenitor(Z, Y).

casados(X, Y) :- casados(Y, X). % simetria

% Cônjuge dos tios
tio_ou_tia_por_casamento(X, Y) :- casados(X, Z), tio(Z, Y).
tio_ou_tia_por_casamento(X, Y) :- casados(X, Z), tia(Z, Y).

primo(X, Y) :- progenitor(Z, X), tio(Z, Y).
primo(X, Y) :- progenitor(Z, X), tia(Z, Y).
