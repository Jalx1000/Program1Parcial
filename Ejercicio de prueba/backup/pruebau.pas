unit PruebaU;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls,
  PruebaUUU;

type

  { TForm1 }

  TForm1 = class(TForm)
    Descargar: TButton;
    Cargar: TButton;
    Cadenna: TEdit;
    MainMenu1: TMainMenu;
    Ejercicios: TMenuItem;
    InsertChar: TMenuItem;
    InsertPos: TMenuItem;
    Buscar: TMenuItem;
    procedure BuscarClick(Sender: TObject);
    procedure CargarClick(Sender: TObject);
    procedure DescargarClick(Sender: TObject);
    procedure InsertCharClick(Sender: TObject);
    procedure InsertPosClick(Sender: TObject);
  private

  public
   x:Cadenass;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.InsertCharClick(Sender: TObject);
var  m:String;


begin

  m:=InputBox('Introduzca un char','','');
  x.insertt(m);

end;

procedure TForm1.InsertPosClick(Sender: TObject);
var m,n:string;
begin
  m:=InputBox('Introduzca un char','','');
  n:=InputBox('Introduzca un Posicion','','');

  x.InsertPos(m,strtoint(n));

end;

procedure TForm1.CargarClick(Sender: TObject);
var n:string;
begin
  x:=Cadenass.create;
  n:=inputbox('Introduzca una Cadena','','');
  x.setcadena(n);
end;

procedure TForm1.BuscarClick(Sender: TObject);
var m:string;
begin
  m:=inputbox('Introduzca la palabra a buscar','','');
  x.BuscarPalabra(m);
end;

procedure TForm1.DescargarClick(Sender: TObject);
begin
    cadenna.text:=x.getcadena;
end;

end.

