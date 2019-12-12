instrutor(chan,math273).
instrutor(patel,ee222).
instrutor(grossman,cs301).
matriculado(kevin,math273).
matriculado(joana,ee222).
matriculado(joana,cs301).
matriculado(kiko,math273).
matriculado(kiko,cs301).

% 5- a. -------------------
eProfessorDe(P,A) :- instrutor(P, X), matriculado(A, X).
% b. ----------------------
%    false
% c. ----------------------
%    X = cs301.
% d. ----------------------
%    X = joana.
% e. ----------------------
%    X = chan
%    X = grossman
% f. ----------------------
%    false
