/* 
a. Quem são as mulheres da família? 
b. Quem são seus tios e tias do Bart por parte de mãe? 
c. Quem são seus tios e tias do Bart por parte de pai? 
d. Quem são seus tios e tias do Bart que se casaram com parentes seus (dos dois 
lados juntos, pai e mãe)? 
e. Quem são seus primos do Bart por parte de pai? 
f. Quem são seus primos do Bart por parte de mãe?
 */

% cada linha uma consulta solicitada:

?- mulher(X).

?- mae(Mae, bart), (irmao(X, Mae); irma(X, Mae)).

?- pai(Pai, bart), (irmao(X, Pai); irma(X, Pai)).

?- tio_ou_tia_por_casamento(X, bart).

?- pai(Pai, bart), (irmao(Tio, Pai); irma(Tio, Pai)), progenitor(Tio, Primo).

?- mae(Mae, bart), (irmao(Tio, Mae); irma(Tio, Mae)), progenitor(Tio, Primo).
