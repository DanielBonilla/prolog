padre(juan,angelica).
padre(angelica,jairo).
padre(angelica,jennifer).

padre(juan,ramon).
padre(ramon,elena).
padre(ramon,raquel).

padre(juan,miguel).
padre(miguel,migueljr).
padre(miguel,fernanda).

padre(juan,jorge).
padre(jorge,daniel).
padre(jorge,diego).

padre(juan,arturo).

padre(juan,enrique).


padre(jesus,elvia).
padre(elvia,armando).

padre(jesus,ricardo).
padre(ricardo,andrea).
padre(ricardo,guadalupe).

padre(jesus,eduardo).
padre(eduardo,oscar).
padre(eduardo,jazmin).

padre(jesus,laura).

madre(simona,angelica).
madre(simona,ramon).
madre(simona,miguel).
madre(simona,jorge).
madre(simona,enrique).
madre(simona,arturo).
madre(elena,elvia).
madre(elena,ricardo).
madre(elena,eduardo).
madre(elena,laura).



abuelo(X,Y) :-  padre(X,Z) , padre(Z,Y).
hermano(X,Y):- padre(A,X) , padre(A,Y), not(X=Y).
tio(X,Y) :- padre(Z,Y) , hermano(X,Z).
