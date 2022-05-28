unit uexamen;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;
type

  { Examen }

  Examen= Class
    private
      valor:integer;
    public
      constructor crear();
      procedure setValor(val:integer);
      function getValor():integer;
      function Multi3():integer;
  end;

implementation

{ Examen }

constructor Examen.crear();
begin
  valor:=0;
end;

procedure Examen.setValor(val: integer);
begin
  valor:=val;
end;

function Examen.getValor(): integer;
begin
  result:=valor;
end;

function Examen.Multi3(): integer;
var cm,aux,nn:integer;
begin
 cm:=0;
 aux:=valor;
 while (aux<>0) do
 begin
     nn:=aux mod 10;
       if nn<>0 then begin
       if nn mod 3=0 then
         begin
         cm:=cm+1;
         end;
       end;
       aux:=aux div 10;
 end;
 result:=cm;
end;

end.

