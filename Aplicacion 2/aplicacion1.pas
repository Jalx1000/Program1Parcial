unit aplicacion1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { aplicacion }

  { Arreglos }

  Arreglos=class

    private
       valores:array[1..5]of integer;
       long:integer;
       adicionar:string;
       Posicion:string;
       insertarcad:string;
       buscar:string;

    public
            constructor create();

            procedure cargar(n1,n2,n3,n4,n5:string);

            procedure setPosicion (m:string);
            function getPosicion ():string;

              procedure setAdicionar (q:string);
            function getAdicionar ():string;

              procedure setInsertar (L:string);
            function getInsertar ():string;


            procedure setBuscar (k:string);
            function getBuscar ():string;

            function Mostrar():string;
            function adicionarP():string;
            function Insertar():string;
            function obtener():string;
            function Cantidad():string;
            function Invertir():string;
            function Rotar():string;
            function BusquedaSec():string;
            function BusquedaBin():string;
            function ordenamiento():string;
            function EliminarRep():string;
            function OrdenarFrec():string;
            function Comostring():string;



  end;

implementation

{ aplicacion }

constructor Arreglos.create();
var i:integer;
begin
  for i:=1 to 5 do begin
    valores[i]:=99969;
  end;

  adicionar:='0';
  posicion:='1';
  insertarcad:='0'


end;

procedure Arreglos.cargar(n1,n2,n3,n4,n5:string);
var cant,posi:integer;
begin
  valores[1]:=strtoint(n1);
  valores[2]:=strtoint(n2);
  valores[3]:=strtoint(n3);
  valores[4]:=strtoint(n4);
  valores[5]:=strtoint(n5);
  valores[strtoint(posicion)]:=valores[strtoint(posicion)]+strtoint(adicionar);



end;

procedure Arreglos.setPosicion(m: string);
begin
  Posicion:=m;
end;


function Arreglos.getPosicion(): string;
begin
  result:=posicion;
end;


function Arreglos.adicionarP(): string;
begin
  valores[strtoint(posicion)]:=valores[strtoint(posicion)]+strtoint(adicionar);

  result:=(inttostr(valores[1])+', '+inttostr(valores[2])+', '+inttostr(valores[3])+', '+inttostr(valores[4])+', '+inttostr(valores[5]));


end;


function Arreglos.Insertar(): string;
begin
  valores[strtoint(posicion)]:=strtoint(insertarcad);

   result:=(inttostr(valores[1])+', '+inttostr(valores[2])+', '+inttostr(valores[3])+', '+inttostr(valores[4])+', '+inttostr(valores[5]));
end;





function Arreglos.obtener(): string;
begin
  result:=inttostr(valores[strtoint(posicion)]);
end;

function Arreglos.Cantidad(): string;
var posi,a:integer;
begin
  for posi:=1 to 5 do begin
    a:=valores[posi]+a;
  end;

  result:='Hay 5 vectores, y la suma de ellos es: '+inttostr(a);



end;

function Arreglos.Invertir(): string;

var posi,a:integer;
  valoresOriginales:array[1..5] of integer;
begin
  a:=5;

  for posi:=1 to 5 do begin
  valoresoriginales[posi]:=valores[posi];
  end;

  for posi:=1 to 5 do begin
    valores[posi]:=valoresoriginales[a];
    a:=a-1
  end;

  result:=(inttostr(valores[1])+', '+inttostr(valores[2])+', '+inttostr(valores[3])+', '+inttostr(valores[4])+', '+inttostr(valores[5])+' ');

end;




function Arreglos.Rotar(): string;
var posi,a:integer;
  valoresOriginales:array[1..5] of integer;
begin
  a:=2;

  for posi:=1 to 5 do begin
  valoresoriginales[posi]:=valores[posi];
  end;

  for posi:=1 to 5 do begin
    if a=6 then begin
     a:=1;
     valores[posi]:=valoresoriginales[a];
    end else begin
    valores[posi]:=valoresoriginales[a];
    a:=a+1
   end;



 end;
  result:=(inttostr(valores[1])+', '+inttostr(valores[2])+', '+inttostr(valores[3])+', '+inttostr(valores[4])+', '+inttostr(valores[5])+' ');




end;

function Arreglos.BusquedaSec(): string;
var posi:integer;
begin
  for posi:=1 to 5 do begin
    if valores[posi]=strtoint(buscar) then begin
     result:='Esta en la posicion: '+inttostr(posi);
     break;
    end;
    result:='No se encontro el elemento a buscar';
  end;


end;

function Arreglos.BusquedaBin(): string;
var aux,i,j,posi,m,t,l,k:integer;
begin

    for posi:=1 to 5 do begin
        for j := posi+1 to 5 do begin
            if (valores[j] < valores[posi]) then begin
                aux := valores[posi];
                valores[posi] := valores[j];
                valores[j] := aux;
            end;
        end;
    end;


  posi:=1;
  t:=5;
  m:=3;
  l:=3;
  k:=5;




  if valores[m]>strtoint(buscar) then begin
    t:=m-1;
    m:=(posi+t)div 2;
       if valores[m]>strtoint(buscar) then begin
       m:=m-1;
       end else if valores[m]<strtoint(buscar) then begin
       m:=m+1;
       end else if valores[m]=strtoint(buscar) then begin
       m:=m;
       end else begin
       m:=99969;
       end;
  end else if valores[m]<strtoint(buscar) then begin
    t:=m+1;
    m:=t;
       if valores[m]>strtoint(buscar) then begin
       m:=m-1;
       end else if valores[m]<strtoint(buscar) then begin
       m:=m+1;
       end else if valores[m]=strtoint(buscar) then begin
       m:=m;
       end else begin
       m:=99969;
       end;
  end else if valores[m]=strtoint(buscar) then begin
    m:=m;
  end;

  if strtoint(buscar)>valores[k] then begin
      result:='No existe el elemento a buscar';
  end else begin

  result:='Esta en la posicion: '+inttostr(m);


  end;


end;

function Arreglos.ordenamiento(): string;
var posi,j,aux:integer;
begin
  for posi:=1 to 5 do begin
        for j := posi+1 to 5 do begin
            if (valores[j] < valores[posi]) then begin
                aux := valores[posi];
                valores[posi] := valores[j];
                valores[j] := aux;
            end;
        end;
    end;

  result:=(inttostr(valores[1])+', '+inttostr(valores[2])+', '+inttostr(valores[3])+', '+inttostr(valores[4])+', '+inttostr(valores[5])+' ');
end;

function Arreglos.EliminarRep(): string;
var posi,j:integer;
begin

  for posi:=1 to 5 do begin
    for j:=posi+1 to 5 do begin
       if valores[j]=valores[posi] then begin
           valores[posi]:=-1;
       end;
    end;
  end;

  result:=(inttostr(valores[1])+', '+inttostr(valores[2])+', '+inttostr(valores[3])+', '+inttostr(valores[4])+', '+inttostr(valores[5])+' ');

end;

function Arreglos.OrdenarFrec(): string;
begin
(* for posi:=1 to 5 do begin
  if valores[posi] in [valores[1],valores[2],valores[3],valores[4],valores[5]] then begin

  end;

 end;   *)


end;

function Arreglos.Comostring(): string;
begin

result:=(inttostr(valores[1])+inttostr(valores[2])+inttostr(valores[3])+inttostr(valores[4])+inttostr(valores[5]));


end;





procedure Arreglos.setAdicionar(q: string);
begin
  Adicionar:=q;
end;


function Arreglos.getAdicionar(): string;
begin
  result:=Adicionar
end;


procedure Arreglos.setInsertar(L: string);
begin
   Insertarcad:=L
end;


function Arreglos.getInsertar(): string;
begin
 result:=insertarcad;
end;

procedure Arreglos.setBuscar(k: string);
begin
  Buscar:=k;
end;

function Arreglos.getBuscar(): string;
begin
   result:=Buscar;
end;



function Arreglos.Mostrar(): string;
begin
result:=(inttostr(valores[1])+', '+inttostr(valores[2])+', '+inttostr(valores[3])+', '+inttostr(valores[4])+', '+inttostr(valores[5]));




end;








end.

