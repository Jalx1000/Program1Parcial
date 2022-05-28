unit PruebaUUU;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Dialogs;

type

   { Cadenas }

   { Cadenass }

   Cadenass=class

    private
     cad:string;

    public
      constructor Create();

      Procedure SetCadena(n:string);
      Function GetCadena():String;

      procedure Insertt(k:string);
      procedure InsertPos(C:String; p:integer);
      Function BuscarPalabra(palabra:string):Integer;



end;

implementation

{ Cadenas }

constructor Cadenass.Create();
begin
cad:='';
end;

procedure Cadenass.SetCadena(n: string);
begin
  cad:=n;
end;

function Cadenass.GetCadena(): String;
begin
 Result:=cad
end;


procedure Cadenass.Insertt(k:string);
begin
  cad:=cad+k;
  showmessage(cad);
end;

procedure Cadenass.InsertPos(C: String; p:integer);
begin
 insert(c,cad,p);
 showmessage(cad);
end;

function Cadenass.BuscarPalabra(palabra:string): Integer;
var t,t2,posi,a,p,k:integer;
begin
   t:=length(cad);
   t2:=length(palabra);
   a:=1;

   for posi:=1 to t do begin
     if cad[posi]=palabra[a] then begin
       a:=a+1;

       if p=0 then begin
         p:=posi;
       end;

       if a=t2 then begin
         a:=2;
         break;
       end;

     end else begin
       a:=1;
       p:=0;
     end;

   end;

   if a=2 then begin
     result:='Esta en la pos: '+inttostr(p);

     end else begin
     result:='No existe la palabra';
     end;

end;

end.

