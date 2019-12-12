capital(parana, curitiba).
capital("sao paulo", "sao paulo").
capital(rondonia, "porto velho").
capital(acre, "rio branco").
capital(tocantins, palmas).
capital(goias, goiania).
capital(alagoas, maceio).

cidade("Campo Mourão").
cidade(curitiba).
cidade("sao paulo").
cidade("porto velho").
cidade("rio branco").
cidade("palmas").
cidade(goiania).
cidade(maceio).

grande(maceio).
grande("sao paulo").
grande(curitiba).
grande(goianaia).
pequena(palmas).
pequena("rio branco").
pequena("Campo Mourão").

regiao(sul, parana).
regiao(suldeste, "sao paulo").
regiao("centro-oeste", goias).
regiao(nordeste, alagoas).
regiao(norte, tocantins).

% 4- a. -------------------
% capital(_, X), pequena(X).
% b. ----------------------
% capital(_, Y), pequena(Y).
% c. ----------------------
% regiao(nordeste, _X), capital(X, _), grande(_).
% d. ----------------------
cosmopolitana(X) :- capital(Y, X), grande(X), (regiao(sul, Y); regiao(suldeste, Y)).
% e. ----------------------
% cosmopolitana(X).
