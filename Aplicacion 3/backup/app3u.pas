unit App3U;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Menus,
  StdCtrls, cadenas;

type

  { TForm1 }

  TForm1 = class(TForm)
    elimchar: TMenuItem;
    Intercambiar: TLabel;
    InterChar: TMenuItem;
    CantChar: TMenuItem;
    FindChar: TMenuItem;
    CantPalabra: TMenuItem;
    InsertPalabra: TMenuItem;
    ElimPalabra: TMenuItem;
    IntercambiarPa: TLabel;
    IntercamPa: TMenuItem;
    BuscPa: TMenuItem;
    AddPa: TMenuItem;
    InvertPa: TMenuItem;
    MayusPa: TMenuItem;
    TitleName: TMenuItem;
    MinusPA: TMenuItem;
    Palabra: TLabel;
    Posicion: TLabel;
    PosicionBox: TEdit;
    InsertChar: TMenuItem;
    Operar: TButton;
    Cajita: TEdit;
    Cadenas: TLabel;
    CaracterBox: TEdit;
    Caracter: TLabel;
    MainMenu1: TMainMenu;
    RotarPa: TMenuItem;
    Trabajo: TMenuItem;
    AddChar: TMenuItem;
    procedure AddCharClick(Sender: TObject);
    procedure AddPaClick(Sender: TObject);
    procedure BuscPaClick(Sender: TObject);
    procedure CantCharClick(Sender: TObject);
    procedure CantPalabraClick(Sender: TObject);
    procedure elimcharClick(Sender: TObject);
    procedure ElimPalabraClick(Sender: TObject);
    procedure FindCharClick(Sender: TObject);
    procedure InsertCharClick(Sender: TObject);
    procedure InsertPalabraClick(Sender: TObject);
    procedure IntercamPaClick(Sender: TObject);
    procedure InterCharClick(Sender: TObject);
    procedure InvertPaClick(Sender: TObject);
    procedure MayusPaClick(Sender: TObject);
    procedure MinusPAClick(Sender: TObject);
    procedure OperarClick(Sender: TObject);
    procedure RotarPaClick(Sender: TObject);
    procedure TitleNameClick(Sender: TObject);

  private
      x:cad;
      AddCaracter:boolean;
      InsertCaracter:boolean;
      deleteCaracter:boolean;
      intercambiarCaracter:boolean;
      CantCaracter:boolean;
      FindCaracter:boolean;
      cantpa:boolean;
      IntroPalabra:boolean;
      EliminarPalabra:boolean;
      IntercambiarPalabra:boolean;
      buscpalabra:boolean;
      addpalabra:boolean;
      invertirpa:boolean;
      RotarPalabras:boolean;
      minusculaPA:boolean;
      mayusculaPA:boolean;
       tituloPa:boolean;
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.AddCharClick(Sender: TObject);
begin
  CaracterBox.Visible:=true;
  Caracter.Visible:=true;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=false;
  intercambiarpa.visible:=false;

  addcaracter:=true;
    intercambiar.visible:=false;
  InsertCaracter:=false;
  deletecaracter:=false;
   intercambiarcaracter:=false;
       findCaracter:=false;
           cantpa:=false;
           IntroPalabra:=false;
           EliminarPalabra:=false;
           IntercambiarPalabra:=false;
           buscpalabra:=false;
           addpalabra:=false;
           invertirPa:=false;
           RotarPalabras:=false;
             MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;
end;

procedure TForm1.AddPaClick(Sender: TObject);
begin
     CaracterBox.Visible:=true;
  Caracter.Visible:=false;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=true;
  intercambiarpa.visible:=false;

  addcaracter:=false;
    intercambiar.visible:=false;
  InsertCaracter:=false;
  deletecaracter:=false;
   intercambiarcaracter:=false;
       findCaracter:=false;
           cantpa:=false;
           IntroPalabra:=false;
           EliminarPalabra:=false;
           IntercambiarPalabra:=false;
           buscpalabra:=false;
           addpalabra:=true;
          invertirPa:=false;
          RotarPalabras:=false;
            MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;
end;

procedure TForm1.BuscPaClick(Sender: TObject);
begin
      CaracterBox.Visible:=true;
  Caracter.Visible:=false;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=true;
  intercambiarpa.visible:=false;


  addcaracter:=false;
  InsertCaracter:=false;
   deletecaracter:=false;
     intercambiar.visible:=false;
      intercambiarcaracter:=false;
      CantCaracter:=false;
      findCaracter:=false;
          cantpa:=false;
          IntroPalabra:=false;
          EliminarPalabra:=false;
          IntercambiarPalabra:=false;
          buscpalabra:=true;
          addpalabra:=false;
          invertirPa:=false;
          RotarPalabras:=false;
            MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;
end;

procedure TForm1.CantCharClick(Sender: TObject);
begin
   CaracterBox.Visible:=true;
  Caracter.Visible:=false;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=false;
  intercambiarpa.visible:=false;

  addcaracter:=false;
    intercambiar.visible:=false;
  InsertCaracter:=false;
  deletecaracter:=false;
   intercambiarcaracter:=false;
   CantCaracter:=true;
       findCaracter:=false;
       cantpa:=false;
       IntroPalabra:=false;
       EliminarPalabra:=false;
       IntercambiarPalabra:=false;
       buscpalabra:=false;
       addpalabra:=false;
       invertirPa:=false;
       RotarPalabras:=false;
        MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;

end;

procedure TForm1.CantPalabraClick(Sender: TObject);
begin
     CaracterBox.Visible:=true;
  Caracter.Visible:=false;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=false;
  intercambiarpa.visible:=false;

  addcaracter:=false;
    intercambiar.visible:=false;
  InsertCaracter:=false;
  deletecaracter:=false;
   intercambiarcaracter:=false;
   CantCaracter:=false;
       findCaracter:=false;
       cantpa:=true;
       IntroPalabra:=false;
       EliminarPalabra:=false;
       IntercambiarPalabra:=false;
       buscpalabra:=false;
       addpalabra:=false;
       invertirPa:=false;
       RotarPalabras:=false;
         MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;
end;

procedure TForm1.elimcharClick(Sender: TObject);
begin
  CaracterBox.Visible:=true;
  Caracter.Visible:=true;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=false;
  intercambiarpa.visible:=false;


  addcaracter:=false;
  InsertCaracter:=false;
   deletecaracter:=true;
     intercambiar.visible:=false;
      intercambiarcaracter:=false;
      CantCaracter:=false;
      findCaracter:=false;
          cantpa:=false;
          IntroPalabra:=false;
          EliminarPalabra:=false;
          IntercambiarPalabra:=false;
          buscpalabra:=false;
          addpalabra:=false;
          invertirPa:=false;
          RotarPalabras:=false;
            MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;
end;

procedure TForm1.ElimPalabraClick(Sender: TObject);
begin
    CaracterBox.Visible:=true;
  Caracter.Visible:=false;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=true;
  intercambiarpa.visible:=false;


  addcaracter:=false;
  InsertCaracter:=false;
   deletecaracter:=false;
     intercambiar.visible:=false;
      intercambiarcaracter:=false;
      CantCaracter:=false;
      findCaracter:=false;
          cantpa:=false;
          IntroPalabra:=false;
          EliminarPalabra:=true;
          IntercambiarPalabra:=false;
          buscpalabra:=false;
          addpalabra:=false;
          invertirPa:=false;
          RotarPalabras:=false;
            MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;

end;

procedure TForm1.FindCharClick(Sender: TObject);
begin
    CaracterBox.Visible:=true;
  Caracter.Visible:=true;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=false;
  intercambiarpa.visible:=false;


  addcaracter:=false;
  InsertCaracter:=false;
   deletecaracter:=false;
     intercambiar.visible:=false;
      intercambiarcaracter:=false;
      CantCaracter:=false;
      findCaracter:=true;
          cantpa:=false;
          IntroPalabra:=false;
          EliminarPalabra:=false;
          IntercambiarPalabra:=false;
          buscpalabra:=false;
          addpalabra:=false;
          invertirPa:=false;
          RotarPalabras:=false;
            MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;

end;

procedure TForm1.InsertCharClick(Sender: TObject);
begin
  PosicionBox.Visible:=true;
  Posicion.Visible:=true;
   CaracterBox.Visible:=true;
  Caracter.Visible:=true;
  intercambiar.visible:=false;
  palabra.visible:=false;
  intercambiarpa.visible:=false;

  addcaracter:=false;
  InsertCaracter:=true;
  deletecaracter:=false;
  intercambiarcaracter:=false;
     CantCaracter:=false;
         findCaracter:=false;
             cantpa:=false;
             IntroPalabra:=false;
             EliminarPalabra:=false;
             IntercambiarPalabra:=false;
             buscpalabra:=false;
             addpalabra:=false;
             invertirPa:=false;
             RotarPalabras:=false;
               MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;
end;

procedure TForm1.InsertPalabraClick(Sender: TObject);
begin
     PosicionBox.Visible:=true;
  Posicion.Visible:=true;
   CaracterBox.Visible:=true;
  Caracter.Visible:=false;
  intercambiar.visible:=false;
  palabra.visible:=true;
  intercambiarpa.visible:=false;

  addcaracter:=false;
  InsertCaracter:=false;
  deletecaracter:=false;
  intercambiarcaracter:=false;
     CantCaracter:=false;
         findCaracter:=false;
             cantpa:=false;
             IntroPalabra:=true;
             EliminarPalabra:=false;
             IntercambiarPalabra:=false;
             buscpalabra:=false;
             addpalabra:=false;
             invertirPa:=false;
             RotarPalabras:=false;
               MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;
end;

procedure TForm1.IntercamPaClick(Sender: TObject);
begin
      PosicionBox.Visible:=true;
  Posicion.Visible:=false;
   CaracterBox.Visible:=true;
  Caracter.Visible:=false;
  intercambiar.visible:=false;
  palabra.visible:=true;
  intercambiarpa.visible:=true;

  addcaracter:=false;
  InsertCaracter:=false;
  deletecaracter:=false;
  intercambiarcaracter:=false;
     CantCaracter:=false;
         findCaracter:=false;
             cantpa:=false;
             IntroPalabra:=false;
             EliminarPalabra:=false;
             IntercambiarPalabra:=true;
             buscpalabra:=false;
             addpalabra:=false;
             invertirPa:=false;
             RotarPalabras:=false;
               MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;
end;

procedure TForm1.InterCharClick(Sender: TObject);
begin
    PosicionBox.Visible:=true;
  Posicion.Visible:=false;
   CaracterBox.Visible:=true;
  Caracter.Visible:=true;
  intercambiar.visible:=true;
  palabra.visible:=false;
  intercambiarpa.visible:=false;

  addcaracter:=false;
  InsertCaracter:=false;
  deletecaracter:=false;
  intercambiarcaracter:=true;
     CantCaracter:=false;
         findCaracter:=false;
             cantpa:=false;
             IntroPalabra:=false;
             EliminarPalabra:=false;
             IntercambiarPalabra:=false;
             buscpalabra:=false;
             addpalabra:=false;
             invertirPa:=false;
             RotarPalabras:=false;
               MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;
end;

procedure TForm1.InvertPaClick(Sender: TObject);
begin
        CaracterBox.Visible:=false;
  Caracter.Visible:=false;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=false;
  intercambiarpa.visible:=false;

  addcaracter:=false;
    intercambiar.visible:=false;
  InsertCaracter:=false;
  deletecaracter:=false;
   intercambiarcaracter:=false;
   CantCaracter:=false;
       findCaracter:=false;
       cantpa:=false;
       IntroPalabra:=false;
       EliminarPalabra:=false;
       IntercambiarPalabra:=false;
       buscpalabra:=false;
       addpalabra:=false;
       invertirPa:=true;
       RotarPalabras:=false;
          MinusculaPA:=false;
       MayusculaPA:=false;
        tituloPa:=false;
end;

procedure TForm1.MayusPaClick(Sender: TObject);
begin
           CaracterBox.Visible:=false;
  Caracter.Visible:=false;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=false;
  intercambiarpa.visible:=false;

  addcaracter:=false;
    intercambiar.visible:=false;
  InsertCaracter:=false;
  deletecaracter:=false;
   intercambiarcaracter:=false;
   CantCaracter:=false;
       findCaracter:=false;
       cantpa:=false;
       IntroPalabra:=false;
       EliminarPalabra:=false;
       IntercambiarPalabra:=false;
       buscpalabra:=false;
       addpalabra:=false;
       invertirPa:=false;
       RotarPalabras:=false;
       MinusculaPA:=false;
       MayusculaPA:=true;
        tituloPa:=false;
end;

procedure TForm1.MinusPAClick(Sender: TObject);
begin
            CaracterBox.Visible:=false;
  Caracter.Visible:=false;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=false;
  intercambiarpa.visible:=false;

  addcaracter:=false;
    intercambiar.visible:=false;
  InsertCaracter:=false;
  deletecaracter:=false;
   intercambiarcaracter:=false;
   CantCaracter:=false;
       findCaracter:=false;
       cantpa:=false;
       IntroPalabra:=false;
       EliminarPalabra:=false;
       IntercambiarPalabra:=false;
       buscpalabra:=false;
       addpalabra:=false;
       invertirPa:=false;
       RotarPalabras:=false;
       MinusculaPA:=True;
       MayusculaPA:=false;
        tituloPa:=false;
end;

procedure TForm1.rotarPaClick(Sender: TObject);
begin
         CaracterBox.Visible:=false;
  Caracter.Visible:=false;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=false;
  intercambiarpa.visible:=false;

  addcaracter:=false;
    intercambiar.visible:=false;
  InsertCaracter:=false;
  deletecaracter:=false;
   intercambiarcaracter:=false;
   CantCaracter:=false;
       findCaracter:=false;
       cantpa:=false;
       IntroPalabra:=false;
       EliminarPalabra:=false;
       IntercambiarPalabra:=false;
       buscpalabra:=false;
       addpalabra:=false;
       invertirPa:=false;
       RotarPalabras:=true;
         MinusculaPA:=false;
       MayusculaPA:=false;
       tituloPa:=false;
end;

procedure TForm1.TitleNameClick(Sender: TObject);
begin
   CaracterBox.Visible:=false;
  Caracter.Visible:=false;
   PosicionBox.Visible:=false;
  Posicion.Visible:=false;
  palabra.visible:=false;
  intercambiarpa.visible:=false;


  addcaracter:=false;
  InsertCaracter:=false;
   deletecaracter:=false;
     intercambiar.visible:=false;
      intercambiarcaracter:=false;
      CantCaracter:=false;
      findCaracter:=false;
          cantpa:=false;
          IntroPalabra:=false;
          EliminarPalabra:=false;
          IntercambiarPalabra:=false;
          buscpalabra:=false;
          addpalabra:=false;
          invertirPa:=false;
          RotarPalabras:=false;
            MinusculaPA:=false;
       MayusculaPA:=false;
       tituloPa:=true;
end;

procedure TForm1.OperarClick(Sender: TObject);
var l,m,n:string;
begin
  if addcaracter=true then begin
    x:=cad.create;
    n:=cajita.text;
    m:=CaracterBox.text;
    x.setcadenita(n);
    x.setcaracter(m);
    cajita.text:=x.addchar;
  end;
  if InsertCaracter=true then begin
    x:=cad.create;
    n:=cajita.text;
    m:=CaracterBox.text;
    l:=PosicionBox.text;
    x.setcadenita(n);
    x.SetCaracter(m);
    x.Setposicion(l);
    Cajita.text:=x.insertchar;
  end;

    if deletecaracter=true then begin
    x:=cad.create;
    n:=cajita.text;
    m:=CaracterBox.text;
    x.setcadenita(n);
    x.setcaracter(m);
    cajita.text:=x.elimchar;
  end;

    if intercambiarcaracter=true then begin
    x:=cad.create;
    n:=cajita.text;
    m:=CaracterBox.text;
    l:=posicionbox.text;
    x.setcadenita(n);
    x.setcaracter(m);
    x.setCharCambiado(l);
    cajita.text:=x.Intercambiar;
  end;


   if Cantcaracter=true then begin
    x:=cad.create;
    n:=cajita.text;
    x.setcadenita(n);
    caracterbox.text:=x.Cantidad;
  end;

    if findCaracter=true then begin
    x:=cad.create;
    n:=cajita.text;
    m:=caracterbox.text;
    x.setcadenita(n);
    x.setcaracter(m);

    posicionbox.text:=x.buscar;
      PosicionBox.Visible:=true;
  end;

      if Cantpa=true then begin
    x:=cad.create;
    n:=cajita.text;
    x.setcadenita(n);
    caracterbox.text:=x.CantPalabritas;
  end;

       if intropalabra=true then begin
    x:=cad.create;
    n:=cajita.text;
    m:=CaracterBox.text;
    l:=PosicionBox.text;
    x.setcadenita(n);
    x.setInsertPalabra(m);
    x.Setposicion(l);
    Cajita.text:=x.InsertarPalabra;
  end;

    if EliminarPalabra=true then begin
    x:=cad.create;
    n:=cajita.text;
    m:=CaracterBox.text;
    x.setcadenita(n);
    x.setInsertPalabra(m);
    cajita.text:=x.eliminarPalabra;
  end;


       if IntercambiarPalabra=true then begin
    x:=cad.create;
    n:=cajita.text;
    m:=CaracterBox.text;
    l:=posicionbox.text;
    x.setcadenita(n);
    x.setInsertPalabra(m);
    x.setpalabra2(l);
    cajita.text:=x.cambiarPalabra;
  end;


    if buscpalabra=true then begin
    x:=cad.create;
    n:=cajita.text;
    m:=caracterbox.text;
    x.setcadenita(n);
    x.setInsertPalabra(m);

    posicionbox.text:=x.BuscarPalabra;
      PosicionBox.Visible:=true;
  end;


    if addpalabra=true then begin
    x:=cad.create;
    n:=cajita.text;
    m:=CaracterBox.text;
    x.setcadenita(n);
    x.setInsertPalabra(m);
    cajita.text:=x.AddPalabra;
  end;


        if invertirPa=true then begin
    x:=cad.create;
    n:=cajita.text;
    x.setcadenita(n);

    cajita.text:=x.invertir;

  end;


    if rotarpalabras=true then begin
    x:=cad.create;
    n:=cajita.text;
    x.setcadenita(n);

    cajita.text:=x.rotar;

  end;


       if MinusculaPA=true then begin
    x:=cad.create;
    n:=cajita.text;
    x.setcadenita(n);

    cajita.text:=x.Minuscula;

  end;


      if MayusculaPA=true then begin
    x:=cad.create;
    n:=cajita.text;
    x.setcadenita(n);

    cajita.text:=x.Mayuscula;

  end;



     if tituloPa=true then begin
    x:=cad.create;
    n:=cajita.text;
    x.setcadenita(n);

    cadenas.caption:=x.titulo;

  end;

end;






end.

