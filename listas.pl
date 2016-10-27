%Una lista se compone de cabecera y el resto de la lista osaea algo asi C | R donde C es la cabecara y R el resto
%[a,b,c,d]
%a  es la cabecera  y b,c,d el resto
%[ C | R ]  => [ a, b, c, d ]  ... C = a, R = b, c, d

primer_elemento([C|R]):-write(C).
%Regla para que devuelva el primer elemento
%write sirve para escribir en pantalla
%PRUEBA:primer_elemento([a,b,c,d]). //debe de imprimir a 

imprimir_lista([C|R]):-write(C),nl, imprimir_lista(R).
imprimir_lista([]).
%nl es para salto de linea
%PRUEBA:imprimir_lista([a,b,c,d]). // imprime lista con saltos de linea

lista_i([A|B]):-lista_i(B),nl,write(A).
lista_i([]).
%PRUEBA:lista_i([a,b,c,d]).  // imprime lista invertida

lista_con([], Ys, Ys).
lista_con([X|Xs],Ys,[X|Zs]):-lista_con(Xs, Ys, Zs).
%PRUEBA:lista_con([a,b,c], [w,x,y,z], Ls).  // imprime concatenacion de dos listas

