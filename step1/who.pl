femme(anne).
femme(betty).
femme(lisa).
femme(sylvie).
femme(eve).
femme(julie).
femme(valerie).

homme(marc).
homme(luc).
homme(jean).
homme(jules).
homme(leon).
homme(loic).
homme(gerard).
homme(jacques).
homme(herve).
homme(paul).

mari_de(marc, anne).
mari_de(luc, betty).
mari_de(jules, lisa).
mari_de(leon, sylvie).
mari_de(loic, eve).
mari_de(paul, julie).

enfant_de(jean, marc).
enfant_de(jules, marc).
enfant_de(leon, marc).
enfant_de(lisa, luc).
enfant_de(loic, luc).
enfant_de(gerard, luc).
enfant_de(jacques, jules).
enfant_de(herve, leon).
enfant_de(julie, leon).
enfant_de(paul, loic).
enfant_de(valerie, loic).

enfant_de(X, Z) :- mari_de(Y, Z), enfant_de(X, Y).
femme_de(Femme, Mari) :- mari_de(Mari, Femme).
beaupere_de(B, X):- homme(B), mari_de(X, F), enfant_de(F, B).
beaupere_de(B, X):- homme(B), femme_de(X, M), enfant_de(M, B).
bellemere_de(B, X):- femme(B), mari_de(M, X), enfant_de(M, B).
bellemere_de(B, X):- femme(B), femme_de(F, X), enfant_de(F, B).
ancetre_de(A, B) :- enfant_de(B, A).
ancetre_de(A, C) :- enfant_de(B, A), ancetre_de(B, C).