unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Grids, StdCtrls, Menus,
  unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Descargar: TButton;
    Cargar: TButton;
    MainMenu1: TMainMenu;
    Ejercicios: TMenuItem;
    Eliminar: TMenuItem;
    VectorBox: TStringGrid;
    procedure CargarClick(Sender: TObject);
    procedure DescargarClick(Sender: TObject);
    procedure EliminarClick(Sender: TObject);

  private

  public
  x:vector;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.CargarClick(Sender: TObject);
begin
  x:=vector.create;
  x.cargarelem;
end;

procedure TForm1.DescargarClick(Sender: TObject);
 var dim,posi:integer;
begin
  dim:=x.getdim();
  vectorbox.colcount:=dim;

  for posi:=1 to dim do begin
    vectorbox.cells[posi-1,0]:=inttostr(x.getelempos(posi));
  end;

end;

procedure TForm1.EliminarClick(Sender: TObject);
begin
  n:=inputbox('Introduzca la posicion a elimina','','');
  x.ElimVec(n)
end;


end.

