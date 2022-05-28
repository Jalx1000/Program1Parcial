unit proyecto1uCompleto;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, ActnList, Buttons, DigitosU, EnterosU2;

type

  { TForm1 }

  TForm1 = class(TForm)
    Base: TEdit;
    Image2: TImage;
    ResultEnt: TEdit;
    OperarEntero: TButton;
    Resultado1: TLabel;
    ValorEntero: TEdit;
    Posicion: TEdit;
    ValorSolitario: TEdit;
    Operar: TButton;
    Seleccione: TComboBox;
    Seleccione2: TComboBox;
    Valor: TEdit;
    Valor2: TEdit;
    ResultadoOperacion: TEdit;
    Resultado: TLabel;
    Operaciones: TLabel;
    Digitos: TLabel;
    Enteros: TLabel;
    Operacioness: TLabel;
    procedure BaseClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure OperarEnteroClick(Sender: TObject);
    procedure Seleccione2Click(Sender: TObject);
    procedure Seleccione2Select(Sender: TObject);
    procedure OperarClick(Sender: TObject);
    procedure PosicionClick(Sender: TObject);
    procedure SeleccioneClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SeleccioneSelect(Sender: TObject);
    procedure Valor2Click(Sender: TObject);
    procedure ValorClick(Sender: TObject);
    procedure ValorEnteroClick(Sender: TObject);
    procedure ValorSolitarioClick(Sender: TObject);

  private

     x: Digitop;
     y: EnterosP;

  public




  end;

var
  Form1: TForm1;
  cantidad:boolean;
  eliminar:boolean;
  impar:boolean;
  par:boolean;
  sumar:boolean;
  mayor:boolean;
  menor:boolean;
  insertar:boolean;
  obtener:boolean;
  primos:boolean;
  Invertir:boolean;
  capicula:boolean;
  parB:boolean;
  imparB:boolean;
  primo:boolean;
  binario:boolean;
  octal:boolean;
  hexadecimal:boolean;
  baseU:boolean;
  romano:boolean;
  literal:boolean;


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
    par:=false;
        insertar:=false;
        obtener:=false;
        primos:=false;
    sumar:=false;
    impar:=false;
    eliminar:=false;
    mayor:=true;
    menor:=false;
    showmessage('Seleccionaste mayor');
    valorsolitario.visible:=true;;
      valor.visible:=false;
    valor2.visible:=false;
     Posicion.visible:=false;
    Operar.visible:=true;
    resultado.visible:=true;
    resultadooperacion.visible:=true;
    valor.text:='Valor';
    valor2.text:='Valor2';
    valorSolitario.text:='Valor';
       valor.top:=144;
    valor2.top:=144;
    Resultadooperacion.text:='';
  end;

     if seleccione.itemindex=6 then begin
    showmessage('Seleccionaste menor');
    eliminar:=false;
    menor:=true;
    obtener:=false;
    primos:=false;
        insertar:=false;
    mayor:=false;
    par:=false;
     sumar:=false;
    impar:=false;
    cantidad:=false;
    valorsolitario.visible:=true;
      valor.visible:=false;
       Posicion.visible:=false;
    valor2.visible:=false;
    Operar.visible:=true;
    resultado.visible:=true;
    resultadooperacion.visible:=true;

    valor.text:='Valor';
    valor2.text:='Valor2';
    valorsolitario.text:='Valor';
       valor.top:=144;
    valor2.top:=144;
     Resultadooperacion.text:='';
     end;


       if seleccione.itemindex=10 then begin
    showmessage('Seleccionaste Sumar');
    mayor:=false;
        insertar:=false;
        obtener:=false;
    menor:=false;
    primos:=false;
    eliminar:=false;
    sumar:=true;
    par:=false;
    impar:=false;
    cantidad:=false;
    valorsolitario.visible:=true;
      valor.visible:=false;
    valor2.visible:=false;
     Posicion.visible:=false;
    Operar.visible:=true;
    resultado.visible:=true;
    resultadooperacion.visible:=true;
     valorsolitario.text:='Valor';
    valor.text:='Valor';
    valor2.text:='Valor2';
       valor.top:=144;
    valor2.top:=144;
    Resultadooperacion.text:='';
     end;

     
    if seleccione.itemindex=1 then begin
    showmessage('Seleccionaste cantidad');
    eliminar:=false;
    par:=false;
    obtener:=false;
    primos:=false;
        insertar:=false;
     mayor:=false;
    menor:=false;
     sumar:=false;
    impar:=false;
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
    par:=false;
    obtener:=false;
    primos:=false;
     insertar:=false;
     sumar:=false;
       mayor:=false;
    menor:=false;
    impar:=false;
    Eliminar:=true;
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
    eliminar:=false;
    insertar:=true;
    primos:=false;
    obtener:=false;
    par:=false;
    impar:=false;
     sumar:=false;
      mayor:=false;
    menor:=false;
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
    eliminar:=false;
    primos:=false;
        insertar:=false;
        obtener:=false;
    par:=false;
     mayor:=false;
    menor:=false;
     sumar:=false;
    cantidad:=false;
    impar:=true;
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
    eliminar:=false;
    obtener:=true;
    primos:=false;
    par:=false;
        insertar:=false;
    impar:=false;
    mayor:=false;
       menor:=false;
     sumar:=false;
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
    par:=true;
        insertar:=false;
    eliminar:=false;
       obtener:=false;
       primos:=false;
     mayor:=false;
    menor:=false;
    impar:=false;
     sumar:=false;
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
    eliminar:=false;
    par:=false;
        insertar:=false;
     mayor:=false;
     primos:=true;
     obtener:=false;
    menor:=false;
     sumar:=false;
    impar:=false;
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

procedure TForm1.ValorEnteroClick(Sender: TObject);
begin
   if valorentero.text='Valor' then begin
  valorentero.text:='';
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
    n,m,q:string;
begin
  if eliminar=true then begin
  n:=valor.text;
  x:=Digitop.creaar;
  x.setvalor(n);
  m:=valor2.text;
  x.setvaloreliminado(m);
  resultadooperacion.text:=x.Eliminar();
  end;
  if cantidad=true then begin
   n:=valorsolitario.text;
   x:=Digitop.Creaar;
   x.setvalor(n);
   resultadooperacion.text:=x.Cantidad;
  end;
  if Impar=true then begin
   n:=valorsolitario.text;
   x:=digitop.Creaar;
   x.setvalor(n);
   resultadooperacion.text:=x.impar();
  end;
  if par=true then begin
   n:=valorsolitario.text;
   x:=digitop.Creaar;
   x.setvalor(n);
   resultadooperacion.text:=x.par();
  end;

    if sumar=true then begin
  n:=valorsolitario.text;
  x:=Digitop.creaar;
  x.setvalor(n);
  resultadooperacion.text:=x.sumar();
  end;

     if mayor=true then begin
  n:=valorsolitario.text;
  x:=Digitop.creaar;
  x.setvalor(n);
  resultadooperacion.text:=x.mayor();
  end;


     if menor=true then begin
  n:=valorsolitario.text;
  x:=Digitop.creaar;
  x.setvalor(n);
  resultadooperacion.text:=x.menor();
  end;

  if insertar=true then begin
  n:=valor.text;
  x:=Digitop.creaar;
  x.setvalor(n);

  m:=valor2.text;
  x.setvalor2(m);

   q:=posicion.text;
  x.setinsertar(q);

  resultadooperacion.text:=x.insertarchar();
  end;


  if obtener=true then begin
  n:=valor.text;
  x:=Digitop.creaar;
  x.setvalor(n);
  m:=valor2.text;
  x.setvalor2(m);
  resultadooperacion.text:=x.obtener();
  end;

   if primos=true then begin
   n:=valorsolitario.text;
   x:=Digitop.Creaar;
   x.setvalor(n);
   resultadooperacion.text:=x.primos;
  end;









end;

procedure TForm1.Seleccione2Click(Sender: TObject);
begin

end;

procedure TForm1.OperarEnteroClick(Sender: TObject);
var n,m:string;
begin
  If invertir=true then begin
  y:=enterosp.create;
  n:=valorentero.text;
  y.setvalorentero(n);
  ResultEnt.text:=y.invertirp();
  end;

  If capicula=true then begin
  y:=enterosp.create;
  n:=valorentero.text;
  y.setvalorentero(n);
  ResultEnt.text:=y.capicula();
  end;

   If parb=true then begin
  y:=enterosp.create;
  n:=valorentero.text;
  y.setvalorentero(n);
  ResultEnt.text:=y.par();
  end;

   If imparb=true then begin
  y:=enterosp.create;
  n:=valorentero.text;
  y.setvalorentero(n);
  ResultEnt.text:=y.impar();
  end;

    If primo=true then begin
  y:=enterosp.create;
  n:=valorentero.text;
  y.setvalorentero(n);
  ResultEnt.text:=y.primo();
  end;

     If binario=true then begin
  y:=enterosp.create;
  n:=valorentero.text;
  y.setvalorentero(n);
  ResultEnt.text:=y.binario();
  end;

      If octal=true then begin
  y:=enterosp.create;
  n:=valorentero.text;
  y.setvalorentero(n);
  ResultEnt.text:=y.octal();
  end;

  If hexadecimal=true then begin
  y:=enterosp.create;
  n:=valorentero.text;
  y.setvalorentero(n);
  ResultEnt.text:=y.hexadecimal();
  end;

  If baseu=true then begin
  y:=enterosp.create;
  n:=valorentero.text;
  m:=base.text;
  y.setvalorentero(n);
  y.setbase(m);
  ResultEnt.text:=y.baseN();
  end;

  If romano=true then begin
  y:=enterosp.create;
  n:=valorentero.text;
  y.setvalorentero(n);
  ResultEnt.text:=y.romanos();
  end;

  If literal=true then begin
  y:=enterosp.create;
  n:=valorentero.text;
  y.setvalorentero(n);
  ResultEnt.text:=y.literal();
  end;

end;

procedure TForm1.BaseClick(Sender: TObject);
begin
  if base.text='Base 2<x<9' then begin
  base.text:='';
  end;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin

end;

procedure TForm1.Seleccione2Select(Sender: TObject);
begin
  if seleccione2.itemindex=1 then begin
   showmessage('Seleccionaste invertir');
     baseu:=false;
     romano:=false;
      literal:=false;
   valorentero.text:='Valor';
   hexadecimal:=false;
    octal:=false;
  valorentero.visible:=true;
  binario:=false;
  primo:=false;
  imparb:=false;
  parb:=false;
 Invertir:=true;
  operarentero.visible:=true;
  resultado1.visible:=true;
  resultent.text:='';
  ResultEnt.visible:=true;
   valorentero.Left:=400;
     base.visible:=false;
  end;


  if seleccione2.itemindex=2 then begin
   showmessage('Seleccionaste Capicula');
     baseu:=false;
     romano:=false;
      literal:=false;
      valorentero.text:='Valor';
      hexadecimal:=false;
  valorentero.visible:=true;
  binario:=false;
   octal:=false;
  primo:=false;
  imparb:=false;
  parb:=false;
 Invertir:=false;
 capicula:=true;
  operarentero.visible:=true;
  resultent.text:='';
  resultado1.visible:=true;
  ResultEnt.visible:=true;
   valorentero.Left:=400;
     base.visible:=false;
  end;

   
  if seleccione2.itemindex=3 then begin
   showmessage('Seleccionaste par');
     baseu:=false;
     romano:=false;
      literal:=false;
      valorentero.text:='Valor';
  valorentero.visible:=true;
  hexadecimal:=false;
  binario:=false;
   octal:=false;
  primo:=false;
 Invertir:=false;
 capicula:=false;
 parb:=true;
 imparb:=false;
  operarentero.visible:=true;
  resultent.text:='';
  resultado1.visible:=true;
  ResultEnt.visible:=true;
   valorentero.Left:=400;
     base.visible:=false;
  end;

   if seleccione2.itemindex=4 then begin
   showmessage('Seleccionaste impar');
     baseu:=false;
      literal:=false;
     romano:=false;
      valorentero.text:='Valor';
      hexadecimal:=false;
      binario:=false;
       octal:=false;
  valorentero.visible:=true;
  primo:=false;
 Invertir:=false;
 capicula:=false;
 parb:=false;
 imparb:=true;
  operarentero.visible:=true;
  resultent.text:='';
  resultado1.visible:=true;
  ResultEnt.visible:=true;
    base.visible:=false;
   valorentero.Left:=400;
  end;

    if seleccione2.itemindex=5 then begin
   showmessage('Seleccionaste primos');
     baseu:=false;
      literal:=false;
      valorentero.text:='Valor';
  valorentero.visible:=true;
  romano:=false;
  hexadecimal:=false;
  binario:=false;
   octal:=false;
 Invertir:=false;
 capicula:=false;
 parb:=false;
 imparb:=false;
 primo:=true;
  operarentero.visible:=true;
  resultent.text:='';
  resultado1.visible:=true;
  ResultEnt.visible:=true;
   valorentero.Left:=400;
     base.visible:=false;
  end;

     if seleccione2.itemindex=6 then begin
   showmessage('Seleccionaste binario');
     baseu:=false;
     romano:=false;
      literal:=false;
   binario:=true;
   hexadecimal:=false;
      valorentero.text:='Valor';
  valorentero.visible:=true;
   octal:=false;
 Invertir:=false;
 capicula:=false;
 parb:=false;
 imparb:=false;
 primo:=false;
  operarentero.visible:=true;
  resultent.text:='';
  resultado1.visible:=true;
  ResultEnt.visible:=true;
   valorentero.Left:=400;
     base.visible:=false;
       base.visible:=false;
  end;


     if seleccione2.itemindex=7 then begin
   showmessage('Seleccionaste octal');
     baseu:=false;
   binario:=false;
   romano:=false;
    literal:=false;
   octal:=true;
   hexadecimal:=false;
      valorentero.text:='Valor';
  valorentero.visible:=true;
 Invertir:=false;
 capicula:=false;
 parb:=false;
 imparb:=false;
 primo:=false;
  operarentero.visible:=true;
  resultent.text:='';
  resultado1.visible:=true;
  ResultEnt.visible:=true;
   valorentero.Left:=400;
     base.visible:=false;
  end;

       if seleccione2.itemindex=8 then begin
   showmessage('Seleccionaste Hexadecimal');
   baseu:=false;
   binario:=false;
    literal:=false;
   romano:=false;
   octal:=false;
   hexadecimal:=true;
      valorentero.text:='Valor';
  valorentero.visible:=true;
 Invertir:=false;
 capicula:=false;
 parb:=false;
 imparb:=false;
 primo:=false;
  operarentero.visible:=true;
  resultent.text:='';
  resultado1.visible:=true;
  ResultEnt.visible:=true;
  valorentero.Left:=400;
     base.visible:=false;
  end;

          if seleccione2.itemindex=9 then begin
   showmessage('Seleccionaste Base n (2<x<9)');
   binario:=false;
   romano:=false;
   octal:=false;
    literal:=false;
   hexadecimal:=true;
   baseu:=true;
      valorentero.text:='Valor';
  valorentero.visible:=true;
 Invertir:=false;
 capicula:=false;
 parb:=false;
 imparb:=false;
 primo:=false;
  operarentero.visible:=true;
  resultent.text:='';
  resultado1.visible:=true;
  ResultEnt.visible:=true;
  valorentero.Left:=360;
   base.visible:=true;
  end;


     if seleccione2.itemindex=10 then begin
   showmessage('Seleccionaste romanos');
     baseu:=false;
   binario:=false;
   literal:=false;
   romano:=true;
   octal:=false;
   hexadecimal:=false;
      valorentero.text:='Valor';
  valorentero.visible:=true;
 Invertir:=false;
 capicula:=false;
 parb:=false;
 imparb:=false;
 primo:=false;
  operarentero.visible:=true;
  resultent.text:='';
  resultado1.visible:=true;
  ResultEnt.visible:=true;
   valorentero.Left:=400;
     base.visible:=false;
  end;

     if seleccione2.itemindex=11 then begin
   showmessage('Seleccionaste Literal');
     baseu:=false;
     literal:=true;
   binario:=false;
   romano:=false;
   octal:=false;
   hexadecimal:=false;
      valorentero.text:='Valor';
  valorentero.visible:=true;
 Invertir:=false;
 capicula:=false;
 parb:=false;
 imparb:=false;
 primo:=false;
  operarentero.visible:=true;
  resultent.text:='';
  resultado1.visible:=true;
  ResultEnt.visible:=true;
   valorentero.Left:=400;
     base.visible:=false;
  end;





end;

end.

