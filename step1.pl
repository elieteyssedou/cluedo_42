homme(X):- member(X, [marc, luc, jean, jules, leon, loic, gerard, jacques, herve, paul]).
femme(X):- member(X, [anne, betty, lisa, sylvie, eve, julie, valerie]).

mari_de(M, F):- member([M, F], [[marc, anne], [luc, betty], [jules, lisa], [leon, sylvie], [loic, eve], [paul, julie]]).
femme_de(F, M):- mari_de(M, F).

enfant_de(E, P):- member([Enfant, Parent], [[[jean, jules, leon], [marc, anne]], [[lisa, loic, gerard], [luc, betty]], [[jacques],[jules, lisa]], [[herve, julie], [leon, sylvie]], [[paul, valerie], [loic, eve]]]), member(E, Enfant), member(P, Parent).

beaupere_de(BP, P):-femme(P), mari_de(M, P), enfant_de(M, BP), homme(BP).
beaupere_de(BP, P):-homme(P), femme_de(F, P), enfant_de(F, BP), homme(BP).

bellemere_de(BM, P):-femme_de(BM, BP), beaupere_de(BP, P).

ancetre(X, Y) :- enfant_de(Y, X).
ancetre(X, Z) :- enfant_de(Y, X), ancetre(Y, Z).