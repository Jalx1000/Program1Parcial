unit DigitosU;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { digitos }

  { digitop }

  digitop = class

    private
      valor,ValorEliminado:string;

    public
      constructor Creaar();
      procedure setvalor (n:string);
      function getvalor ():string;
        procedure setvaloreliminado (m:string);
      function getvaloreliminado ():string;

      function Cantidad():integer;
      function Eliminar():integer;

  end;


implementation

{ digitos }

constructor digitop.Creaar();
begin
  valor:='';
  valoreliminado:='';
end;

procedure digitop.setvalor(n: string);
begin
   valor:=n;
end;

function digitop.getvalor(): string;
begin
  result:=valor;
end;

procedure digitop.setvaloreliminado(m: string);
begin
  valoreliminado:=m;
end;

function digitop.getvaloreliminado(): string;
begin
  result:=valoreliminado;
end;

function digitop.Cantidad(): integer;
var a:string;
t:byte;
begin

    a:=valor;
   t:=length(a);

   result:=t;

end;

function digitop.Eliminar(): integer;
begin



end;

end.

