unit Proyecto1U;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, ActnList, Buttons, DigitosU;

type

  { TForm1 }

  TForm1 = class(TForm)
    Posicion: TEdit;
    ValorSolitario: TEdit;
    Operar: TButton;
    Seleccione: TComboBox;
    ComboBox2: TComboBox;
    Valor: TEdit;
    Valor2: TEdit;
    ResultadoOperacion: TEdit;
    Resultado: TLabel;
    Operaciones: TLabel;
    Digitos: TLabel;
    Enteros: TLabel;
    Operacioness: TLabel;
    procedure OperarClick(Sender: TObject);
    procedure PosicionClick(Sender: TObject);
    procedure SeleccioneClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SeleccioneSelect(Sender: TObject);
    procedure Valor2Click(Sender: TObject);
    procedure ValorClick(Sender: TObject);
    procedure ValorSolitarioClick(Sender: TObject);

  private
     x:Digitop;
  public




  end;

var
  Form1: TForm1;
  cantidad:boolean;


implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.SeleccioneSelect(Sender: TObject);
begin
    if seleccione.itemindex=5 then begin
    cantidad:=false;
    showmessage('Seleccionaste mayor');
    valorsolitario.visible:=false;
      valor.visible:=true;
    valor2.visible:=true;
     Posicion.visible:=false;
    Operar.visible:=true;
    resultado.visible:=true;
    resultadooperacion.visible:=true;
    valor.text:='Valor';
    valor2.text:='Valor2';
       valor.top:=144;
    valor2.top:=144;
    Resultadooperacion.text:='';
  end;

     if seleccione.itemindex=6 then begin
    showmessage('Seleccionaste menor');
    cantidad:=false;
    valorsolitario.visible:=false;
      valor.visible:=true;
       Posicion.visible:=false;
    valor2.visible:=true;
    Operar.visible:=true;
    resultado.visible:=true;
    resultadooperacion.visible:=true;

    valor.text:='Valor';
    valor2.text:='Valor2';
       valor.top:=144;
    valor2.top:=144;
     Resultadooperacion.text:='';
     end;


       if seleccione.itemindex=10 then begin
    showmessage('Seleccionaste Sumar');
    cantidad:=false;
    valorsolitario.visible:=false;
      valor.visible:=true;
    valor2.visible:=true;
     Posicion.visible:=false;
    Operar.visible:=true;
    resultado.visible:=true;
    resultadooperacion.visible:=true;

    valor.text:='Valor';
    valor2.text:='Valor2';
       valor.top:=144;
    valor2.top:=144;
    Resultadooperacion.text:='';
     end;

     
    if seleccione.itemindex=1 then begin
    showmessage('Seleccionaste cantidad');
    cantidad:=true;
    valor.visible:=false;
     Posicion.visible:=false;
    valor2.visible:=false;
    valorSolitario.visible:=true;
    Operar.visible:=true;
    resultado.visible:=true;
    resultadooperacion.visible:=true;

    valorSolitario.text:='Valor';
       valor.top:=144;
    valor2.top:=144;
    Resultadooperacion.text:='';
     end;



     if seleccione.itemindex=2 then begin
    showmessage('Seleccionaste Eliminar');
    cantidad:=false;
    valorsolitario.visible:=false;
    Posicion.visible:=false;
      valor.visible:=true;
    valor2.visible:=true;
    Operar.visible:=true;
    resultado.visible:=true;
    resultadooperacion.visible:=true;
    valor.text:='Valor';
    valor2.text:='Eliminar';
     valor.top:=144;
    valor2.top:=144;
   Resultadooperacion.text:='';
  end;



       if seleccione.itemindex=4 then begin
    showmessage('Seleccionaste Insertar');
    cantidad:=false;
    valorsolitario.visible:=false;
      valor.visible:=true;
    valor2.visible:=true;
    Operar.visible:=true;
    Posicion.visible:=true;
    resultado.visible:=true;
    resultadooperacion.visible:=true;
    valor.text:='Valor';
    valor2.text:='Insertar';
     posicion.text:='Posicion';
    valor.top:=120;
    valor2.top:=120;
  Resultadooperacion.text:='';
  end;

         if seleccione.itemindex=3 then begin
    showmessage('Seleccionaste Impares');
    cantidad:=false;
    valorsolitario.visible:=true;
      valor.visible:=false;
    valor2.visible:=false;
    Operar.visible:=true;
    Posicion.visible:=false;
    resultado.visible:=true;
    resultadooperacion.visible:=true;
    valor.text:='Valor';
    valor2.text:='Insertar';
     posicion.text:='Posicion';
     valorsolitario.text:='Valor';
      valor.top:=144;
    valor2.top:=144;
     Resultadooperacion.text:='';
  end;

           if seleccione.itemindex=7 then begin
    showmessage('Seleccionaste Obtener');
    cantidad:=false;
    valorsolitario.visible:=false;
      valor.visible:=true;
    valor2.visible:=true;
    Operar.visible:=true;
    Posicion.visible:=false;
    resultado.visible:=true;
    resultadooperacion.visible:=true;
    valor.text:='Valor';
    valor2.text:='Obtener';
     posicion.text:='Posicion';
     valorsolitario.text:='Valor';
     valor.top:=144;
    valor2.top:=144;
      Resultadooperacion.text:='';
  end;


     if seleccione.itemindex=8 then begin
    showmessage('Seleccionaste pares');
    cantidad:=false;
    valorsolitario.visible:=true;
      valor.visible:=false;
    valor2.visible:=false;
    Operar.visible:=true;
    Posicion.visible:=false;
    resultado.visible:=true;
    resultadooperacion.visible:=true;
    valor.text:='Valor';
    valor2.text:='Insertar';
     posicion.text:='Posicion';
     valorsolitario.text:='Valor';
      valor.top:=144;
    valor2.top:=144;
   Resultadooperacion.text:='';
  end;


       if seleccione.itemindex=9 then begin
    showmessage('Seleccionaste primos');
    cantidad:=false;
    valorsolitario.visible:=true;
      valor.visible:=false;
    valor2.visible:=false;
    Operar.visible:=true;
    Posicion.visible:=false;
    resultado.visible:=true;
    resultadooperacion.visible:=true;
    valor.text:='Valor';
    valor2.text:='Insertar';
     posicion.text:='Posicion';
     valorsolitario.text:='Valor';
      valor.top:=144;
    valor2.top:=144;
    Resultadooperacion.text:='';
  end;




end;

procedure TForm1.Valor2Click(Sender: TObject);
begin

  if valor2.text='Valor2' then begin
  valor2.text:='';

  end;

   if valor2.text='Eliminar' then begin
  valor2.text:='';
  end;

  if valor2.text='Insertar' then begin
  valor2.text:='';
  end;

  if valor2.text='Obtener' then begin
  valor2.text:='';
  end;

end;

procedure TForm1.ValorClick(Sender: TObject);
begin

  if valor.text='Valor' then begin
  valor.text:='';
  end;

end;

procedure TForm1.ValorSolitarioClick(Sender: TObject);
begin

   if valorsolitario.text='Valor' then begin
  valorsolitario.text:='';
  end;

end;

procedure TForm1.SeleccioneClick(Sender: TObject);
begin

end;

procedure TForm1.PosicionClick(Sender: TObject);
begin
    if Posicion.text='Posicion' then begin
  Posicion.text:='';

    end;


end;

procedure TForm1.OperarClick(Sender: TObject);
  var
    n:string;
begin

  if cantidad=true then begin
   n:=valorsolitario.text;
   x:=Digitop.Creaar;
   x.setvalor(n);
   resultadooperacion.text:=inttostr(x.Cantidad());
  end;







end;

end.

