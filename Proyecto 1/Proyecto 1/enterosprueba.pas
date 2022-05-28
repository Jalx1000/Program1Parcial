unit EnterosPrueba;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

implementation





type

    { enteros }

    enteros = class
     private
      Valor:string;


    public
            constructor Crear();
      procedure setvalor (n:string);
      function getvalor ():string;
      function Invertir():string;


   end;

{ enteros }

constructor enteros.Crear();
begin
    valor:='';
end;

procedure enteros.setvalor(n: string);
begin
   valor:=n;
end;

function enteros.getvalor(): string;
begin
   result:=valor;
end;

function enteros.Invertir(): string;
var t,posi:byte;
  r:string;
begin
   t:=length(valor);
   for posi:=1 to t do begin
   r:=valor[posi]+r;


   end;
    result:='Invertido es: '+r;
end;


end.
