mae(maria, elias).
mae(maria, rodrigo).
mae(helena, mauricio).
mae(simone, maria).
pai(benedito, christopher).
pai(christopher, denis).
pai(felipe, elias).
pai(felipe, rodrigo).
pai(christopher, regis).

% Exercício 1 ======================================
irmao(X,Y) :- mae(M,X), mae(M,Y); pai(P,X), pai(P,Y).
% ==================================================

% Exercício 2 ======================================
avo(A,N) :- pai(A,X), (pai(X,N); mae(X,N)).
% ==================================================
