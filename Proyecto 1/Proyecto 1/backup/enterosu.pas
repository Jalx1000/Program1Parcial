unit EnterosU;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;







type



    { enterosd }

    enterosd = class
     private
      Valor:string;


    public
            constructor Create();
      procedure setvalor (n:string);
      function getvalor ():string;
      function Invertir():string;
      function Capicula():string;


   end;


implementation
{ enterosd }

constructor enterosd.Create();
begin
    valor:='';
end;

procedure enterosd.setvalor(n: string);
begin
   valor:=n;
end;

function enterosd.getvalor(): string;
begin
   result:=valor;
end;

function enterosd.Invertir(): string;
var t,posi:byte;
  r:string;
begin
   t:=length(valor);
   for posi:=1 to t do begin
   r:=valor[posi]+r;


   end;
    result:='Invertido es: '+r;
end;

function enterosd.Capicula(): string;
begin

end;


end.

