come(urso, peixe).
come(urso, raposa).
come(veado, grama).
animal(urso).
animal(peixe).
animal(raposa).
animal(veado).
planta(grama).
presa(X) :- come(Y,X), animal(X).
