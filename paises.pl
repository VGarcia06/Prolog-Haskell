%paises
es_un_pais(uruguay).
es_un_pais(chile).
es_un_pais(paraguay).
es_un_pais(argentina).

%un pais limita con otro
limita_con(brasil,argentina).
limita_con(brasil,paraguay).
limita_con(brasil,uruguay).
limita_con(argentina,chile).
limita_con(argentina,uruguay).
limita_con(venezuela,brasil).
limita_con(argentina,paraguay).

%paises limitrofes
limitrofes(X,Y):-limita_con(X,Y). %OR
limitrofes(X,Y):-limita_con(Y,X).

%superficie por pais
superficie_pais(brasil,8547404).
superficie_pais(uruguay,176000).

%un pais es peque�o
pais_peque�o(X):-superficie_pais(X,Y),Y<1000000. %AND

%paises translimitrofes
%si cada uno limita con un mismo pais intermedio
%pero no limitan entre ellos
translimitrofes(X,Y):-limitrofes(X,Z),
    limitrofes(Z,Y), %limitan con un intermediario
    dif(X,Y), % son paises diferentes
    not(limitrofes(X,Y)). % no limitan entre ellos















