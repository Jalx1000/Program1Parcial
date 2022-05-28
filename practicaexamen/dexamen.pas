unit dexamen;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, uexamen;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    R: TEdit;
    V: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
   N: Examen;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button3Click(Sender: TObject);
begin
  N:= Examen.crear();
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  R.Text:='Hay '+IntToStr(N.Multi3())+' multiplos de 3';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  N:=Examen.crear();
  N.setValor(strtoint(V.text));
  R.Text:='Hay '+IntToStr(N.Multi3())+' multiplos de 3';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 N.setValor(StrToInt(V.Text));
 V.Text:='';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  R.Text:=IntToStr(N.getValor());
end;

end.

