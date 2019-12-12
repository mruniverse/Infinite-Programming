patrao(miguel,joana).
patrao(judite,miguel).
patrao(anita,judite).
patrao(judite,kim).
patrao(kim,henrique).
patrao(anita,samuel).
patrao(henrique,jeferson).
patrao(miguel,hamal).

supervisor(X,Y) :- patrao(X,Y).
supervisor(X,Y) :- patrao(X,Z), supervisor(Z,Y).

% 3-
% a. X = anita.
% -----------------------
% b. X = miguel; X = kim.
% -----------------------
% c. X = judite
%    X = samuel
%    X = miguel
%    X = kim
%    X = joana
%    X = hamal
%    X = henrique
%    X = jeferson
% -----------------------
% d. X = joana
%    X = hamal
% -----------------------
% e. X = kim
%    X = anita
%    X = judite
