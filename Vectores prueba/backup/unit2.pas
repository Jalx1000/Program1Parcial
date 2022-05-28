unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Dialogs;
type

  { vector }

  vector=class

    private
     elem:array [1..1000] of integer;
     dim:integer;

    public
      constructor create();

      procedure CargarElem();
      Function getdim(): integer;
      procedure SetElem(ElemNuevo:Integer ; Pos:Integer);
      function GetElemPos(pos:integer):integer;
      procedure ElimVec(pos:integer);




  end;


implementation

{ vector }

constructor vector.create();
var posi:integer;
begin
  for posi:=1 to 1000 do begin
    elem[posi]:=0;
  end;
  dim:=0;
end;

procedure vector.CargarElem();
var dimteclado:string;
elemteclado:string;
posi:integer;
begin
  dimteclado:=inputbox('Digite la dimension','','');
  dim:=strtoint(dimteclado);

  for posi:=1 to dim do begin
  Elemteclado:=InputBox('Introduzca el elemento de la posicion: '+inttostr(posi),'','');

  elem[posi]:=strtoint(elemteclado);
  end;

end;

function vector.getdim(): integer;
begin
  result:=dim;
end;

procedure vector.SetElem(ElemNuevo: Integer; Pos: Integer);
begin
    if (pos<=dim) then begin
      elem[pos]:=elemnuevo
    end;
end;

function vector.GetElemPos(pos: integer): integer;
begin
  result:=elem[pos]
end;

procedure Vector.ElimVec(pos:integer);
var posi:integer;
   r:string;
   pillo:boolean;
   i:integer;
   j:integer;
begin
  pillo:=false;
  posi:=1;


  while ((posi<dim) and not pillo) do
  begin

    if (posi=pos) then begin
      pillo:=true;
      for j:=1 to dim-1 do
     elem[j]:=elem[j+1];

    end;
     posi:=posi+1;

  end;


  dim:=dim-1;


end;

end.

