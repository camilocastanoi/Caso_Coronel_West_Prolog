% Hechos dados en el problema
americano(west).
enemigo(corea_sur, america).
misil(m1).
tiene(corea_sur, m1).

% Regla: Si un país es enemigo de EE.UU., es hostil.
hostil(Pais) :- enemigo(Pais, america).

% Regla: Si algo es un misil, entonces es un arma.
arma(X) :- misil(X).

% Regla: Todos los misiles de Corea del Sur fueron vendidos por West.
vende(west, X, corea_sur) :- misil(X), tiene(corea_sur, X).

% Ley: Es un crimen para un americano vender armas a países hostiles.
criminal(X) :- americano(X), arma(Y), vende(X, Y, Z), hostil(Z).