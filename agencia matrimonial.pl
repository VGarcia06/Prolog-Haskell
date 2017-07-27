%hombres
hombre(martin,media,rubio,joven).
hombre(gonzalo,alta,casta�o,joven).
hombre(lucas,baja,casta�o,joven).
hombre(david,alta,negro,adulta).
hombre(roberto,baja,negro,viejo).

%mujeres
mujer(laura,alta,casta�o,joven).
mujer(martina,media,rubio,joven).
mujer(tatiana,baja,negro,joven).
mujer(jessica,alta,negro,adulta).
mujer(eugenia,baja,negro,joven).

%gustos de los hombres
gusta(martin,pop,ciencia_ficcion,natacion).
gusta(gonzalo,pop,aventura,jogging).
gusta(lucas,jazz,policiaca,tenis).
gusta(david,jazz,policiaca,tenis).
gusta(roberto,clasica,aventura,tenis).

%gustos de las mujeres
gusta(laura,pop,aventura,jogging).
gusta(martina,pop,ciencia_ficcion,natacion).
gusta(tatiana,clasica,aventura,gogging).
gusta(jessica,jazz,policiaca,tenis).
gusta(eugenia,clasica,ciencia-ficcion,natacion).

%mujeres buscadas por los hombres
busca(martin,media,rubio,joven).
busca(gonzalo,alta,casta�a,joven).
busca(lucas,baja,pelirroja,adulta).
busca(david,alta,negro,adulta).
busca(roberto,media,negro,joven).

%hombres buscados por las mujeres
busca(laura,alta,casta�a,joven).
busca(martina,media,rubio,joven).
busca(tatiana,media,casta�a,joven).
busca(jessica,alta,negro,adulta).
busca(eugenia,baja,casta�a,joven).

%personas adecuadas
adecuados(X,Y):-
    sexosDiferentes(X,Y),
    conviene(X,Y),
    conviene(Y,X).

%personas de sexos diferentes
sexosDiferentes(X,Y):-
   hombre(X,_,_,_),
   mujer(Y,_,_,_).
sexosDiferentes(X,Y):-
   mujer(X,_,_,_),
   hombre(Y,_,_,_).

%a la persona X le conviene la persona Y
conviene(X,Y):-
    hombre(Y,A,C,E),
    busca(X,A,C,E),
    mismosGustos(X,Y).
conviene(X,Y):-
    mujer(Y,A,C,E),
    busca(X,A,C,E),
    mismosGustos(X,Y).

%personas con los mismos gustos
mismosGustos(X,Y):-
    gusta(X,M,L,S),
    gusta(Y,M,L,S),
    X\==Y.
