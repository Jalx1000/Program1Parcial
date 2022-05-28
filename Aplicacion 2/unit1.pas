unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Menus, aplicacion1;

type

  { TForm1 }

  TForm1 = class(TForm)
    AdicionarSelect: TMenuItem;
    EliminarRepetidos: TMenuItem;
    ComoString: TMenuItem;
    Label1: TLabel;
    Ordenamiento: TMenuItem;
    NecesitaORD: TEdit;
    Insertar: TMenuItem;
    Buscar: TLabel;
    lnsertar: TLabel;
    Cantidad: TMenuItem;
    Invertir: TMenuItem;
    BusquedaSecuencial: TMenuItem;
    BusquedaBinomial: TMenuItem;
    Rotar: TMenuItem;
    Obtener: TMenuItem;
    Operar: TButton;
    PosicionBox: TEdit;
    AdicionarBox: TEdit;
    Adicionar: TLabel;
    Posicion: TLabel;
    Valor2: TEdit;
    Valor3: TEdit;
    Valor4: TEdit;
    valor5: TEdit;
    Pos1: TLabel;
    Pos2: TLabel;
    Pos3: TLabel;
    Pos4: TLabel;
    Pos5: TLabel;
    MainMenu1: TMainMenu;
    ejercicios: TMenuItem;
    Cargar: TMenuItem;
    Mostrar: TMenuItem;
    resultado: TEdit;
    valor: TEdit;
    Panel1: TPanel;
    procedure AdicionarClick(Sender: TObject);
    procedure AdicionarSelectClick(Sender: TObject);
    procedure BusquedaBinomialClick(Sender: TObject);
    procedure BusquedaSecuencialClick(Sender: TObject);
    procedure CantidadClick(Sender: TObject);
    procedure ComoStringClick(Sender: TObject);
    procedure EliminarRepetidosClick(Sender: TObject);
    procedure InsertarClick(Sender: TObject);
    procedure InvertirClick(Sender: TObject);
    procedure ObtenerClick(Sender: TObject);
    procedure OperarClick(Sender: TObject);
    procedure MostrarClick(Sender: TObject);
    procedure CargarClick(Sender: TObject);
    procedure OrdenamientoClick(Sender: TObject);
    procedure RotarClick(Sender: TObject);
    procedure valorChange(Sender: TObject);

  private

     x:arreglos;

  public

  end;

var
  Form1: TForm1;

  n:string;
  Mostrar:Boolean;
  insertarbool:boolean;
  adicionarbool:boolean;
  obtenerbool:boolean;
   busquedabool:boolean;
   busquedaBibool:boolean;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.operarClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
  q,m,L:string;
begin

  if adicionarbool=true then begin

   q:=adicionarbox.text;

 m:=posicionbox.text;
 x.setPosicion(m);

 x.setAdicionar(q);
 resultado.text:=x.adicionarp;


 case m of
 '1'  :     valor.text:=inttostr(strtoint(valor.text)+strtoint(q));
 '2'  :    valor2.text:=inttostr(strtoint(valor2.text)+strtoint(q));
 '3'  :    valor3.text:=inttostr(strtoint(valor3.text)+strtoint(q));
 '4'  :    valor4.text:=inttostr(strtoint(valor4.text)+strtoint(q));
 '5'  :    valor5.text:=inttostr(strtoint(valor5.text)+strtoint(q));
 end;


 end;



    if insertarbool=true then begin

   L:=adicionarbox.text;

 m:=posicionbox.text;
 x.setPosicion(m);

 x.setInsertar(L);
 resultado.text:=x.insertar;


 case m of
 '1'  :     valor.text:=L;
 '2'  :    valor2.text:=L;
 '3'  :    valor3.text:=L;
 '4'  :    valor4.text:=L;
 '5'  :    valor5.text:=L;
 end;


 end;




 if obtenerBool=true then begin

 m:=posicionbox.text;
 x.setPosicion(m);
 resultado.text:=x.obtener;



 end;


 if Busquedabool=true then begin
   x.setbuscar(posicionbox.text);
   x.BusquedaSec;
   resultado.text:=x.BusquedaSec;

 end;

  if BusquedaBIbool=true then begin
   x.setbuscar(posicionbox.text);
   x.BusquedaBin;
   resultado.text:=x.BusquedaBIN;

 end;





end;



procedure TForm1.MostrarClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
begin
  BusquedaBIbool:=false;
     necesitaORD.visible:=false;
 busquedabool:=false;
      obtenerbool:=false;
    adicionarbool:=false;
    insertarbool:=false;
    operar.visible:=false;
      adicionar.visible:=false;
    adicionarbox.visible:=false;
        Posicion.visible:=false;
        lnsertar.visible:=false;
    Posicionbox.visible:=false;
     buscar.visible:=false;
    valor.Enabled:=false;
  valor2.Enabled:=false;
  valor3.Enabled:=false;
  valor4.Enabled:=false;
  valor5.Enabled:=false;

 x:=arreglos.create;
 n1:=valor.text;
 n2:=valor2.text;
 n3:=valor3.text;
 n4:=valor4.text;
 n5:=valor5.text;
 x.cargar(n1,n2,n3,n4,n5);
 resultado.text:=x.mostrar;


end;

procedure TForm1.AdicionarSelectClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
  q,m:string;
begin

 BusquedaBIbool:=false;
    necesitaORD.visible:=false;
  obtenerbool:=false;

     busquedabool:=false;
    insertarbool:=false;
     n1:=valor.text;
    n2:=valor2.text;
    n3:=valor3.text;
    n4:=valor4.text;
    lnsertar.visible:=false;
   n5:=valor5.text;
   x.cargar(n1,n2,n3,n4,n5);
   resultado.text:=x.mostrar;
   buscar.visible:=false;
    posicionbox.left:=376;
    posicion.left:=392;

    adicionar.visible:=true;
    adicionarbox.visible:=true;
        Posicion.visible:=true;
    Posicionbox.visible:=true;

    valor.Enabled:=false;
  valor2.Enabled:=false;
  valor3.Enabled:=false;
  valor4.Enabled:=false;
  valor5.Enabled:=false;

  operar.visible:=true;

   adicionarBool:=true;



end;

procedure TForm1.BusquedaBinomialClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
  q,m:string;
  posi,t,a:integer;
begin
  adicionar.visible:=false;
  obtenerbool:=false;
  insertarbool:=false;
  necesitaORD.visible:=true;
       valor.Enabled:=false;
  valor2.Enabled:=false;
  valor3.Enabled:=false;
  valor4.Enabled:=false;
  valor5.Enabled:=false;
  busquedaBIbool:=true;
  busquedabool:=false;

        lnsertar.visible:=false;
    adicionarbox.visible:=false;
    buscar.visible:=true;

    posicionbox.left:=296;
    posicionbox.visible:=true;

  posicion.visible:=false;
    n1:=valor.text;
    n2:=valor2.text;
    n3:=valor3.text;
    n4:=valor4.text;
    n5:=valor5.text;
   x.cargar(n1,n2,n3,n4,n5);

  operar.visible:=true;

end;

procedure TForm1.BusquedaSecuencialClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
  q,m:string;
  posi,t,a:integer;
begin
  obtenerbool:=false;
  insertarbool:=false;
  BusquedaBIbool:=false;
     necesitaORD.visible:=false;
       valor.Enabled:=false;
  valor2.Enabled:=false;
  valor3.Enabled:=false;
  valor4.Enabled:=false;
  valor5.Enabled:=false;
  busquedabool:=true;
     adicionar.visible:=false;
        lnsertar.visible:=false;
    adicionarbox.visible:=false;
    buscar.visible:=true;

    posicionbox.left:=296;
    posicionbox.visible:=true;

  posicion.visible:=false;
    n1:=valor.text;
    n2:=valor2.text;
    n3:=valor3.text;
    n4:=valor4.text;
    n5:=valor5.text;
   x.cargar(n1,n2,n3,n4,n5);

  operar.visible:=true;





end;

procedure TForm1.CantidadClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
begin
 obtenerbool:=false;
  insertarbool:=false;
  BusquedaBIbool:=false;
     necesitaORD.visible:=false;
     valor.Enabled:=false;
  valor2.Enabled:=false;
  valor3.Enabled:=false;
  valor4.Enabled:=false;
  valor5.Enabled:=false;
  busquedabool:=false;
      buscar.visible:=false;
      lnsertar.visible:=false;
    adicionarbox.visible:=false;
   adicionar.visible:=false;
  posicion.visible:=false;
  posicionbox.visible:=false;
        n1:=valor.text;
    n2:=valor2.text;
    n3:=valor3.text;
    n4:=valor4.text;
   n5:=valor5.text;
   x.cargar(n1,n2,n3,n4,n5);
  resultado.Text:=x.cantidad;

end;

procedure TForm1.ComoStringClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
begin
    BusquedaBIbool:=false;
necesitaORD.visible:=false;
busquedabool:=false;
  obtenerbool:=false;
adicionarbool:=false;
insertarbool:=false;
operar.visible:=false;
  adicionar.visible:=false;
adicionarbox.visible:=false;
    Posicion.visible:=false;
    lnsertar.visible:=false;
Posicionbox.visible:=false;
 buscar.visible:=false;
valor.Enabled:=false;
valor2.Enabled:=false;
valor3.Enabled:=false;
valor4.Enabled:=false;
valor5.Enabled:=false;

x:=arreglos.create;
n1:=valor.text;
n2:=valor2.text;
n3:=valor3.text;
n4:=valor4.text;
n5:=valor5.text;
x.cargar(n1,n2,n3,n4,n5);
resultado.text:=x.comostring;

end;

procedure TForm1.EliminarRepetidosClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
  q,m:string;
  posi,t,a:integer;
begin
  adicionar.visible:=false;
   obtenerbool:=false;
  insertarbool:=false;
  BusquedaBIbool:=false;
     valor.Enabled:=false;
  valor2.Enabled:=false;
  valor3.Enabled:=false;
  busquedabool:=false;
  valor4.Enabled:=false;
  valor5.Enabled:=false;
   necesitaORD.visible:=false;
        lnsertar.visible:=false;
    adicionarbox.visible:=false;
   buscar.visible:=false;
  posicion.visible:=false;
  posicionbox.visible:=false;
    n1:=valor.text;
    n2:=valor2.text;
    n3:=valor3.text;
    n4:=valor4.text;
    n5:=valor5.text;
   x.cargar(n1,n2,n3,n4,n5);
  resultado.Text:=x.EliminarRep;



    valor.text:='';
    Repeat
      valor.text:=valor.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=',';




      valor2.text:='';
      a:=a+2;
        Repeat
      valor2.text:=valor2.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=',';





       valor3.text:='';
       a:=a+2;
        Repeat
      valor3.text:=valor3.text+resultado.text[a];
      a:=a+1;
    until resultado.text[a]=',';




       valor4.text:='';
        a:=a+2;
        Repeat
      valor4.text:=valor4.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=',';





     valor5.text:='';
      a:=a+2;
        Repeat
      valor5.text:=valor5.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=' ';

end;

procedure TForm1.AdicionarClick(Sender: TObject);
begin

end;

procedure TForm1.InsertarClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
  q,m:string;
begin
  BusquedaBIbool:=false;
     necesitaORD.visible:=false;
       obtenerbool:=false;
     posicion.left:=376;
  posicionbox.left:=376;
  busquedabool:=false;
      buscar.visible:=false;
       adicionar.visible:=false;
      adicionarbool:=false;
    insertarbool:=true;
     n1:=valor.text;
    n2:=valor2.text;
    n3:=valor3.text;
    n4:=valor4.text;
   n5:=valor5.text;
   x.cargar(n1,n2,n3,n4,n5);
   resultado.text:=x.mostrar;


    lnsertar.visible:=true;
    adicionarbox.visible:=true;
        Posicion.visible:=true;
    Posicionbox.visible:=true;

    valor.Enabled:=false;
  valor2.Enabled:=false;
  valor3.Enabled:=false;
  valor4.Enabled:=false;
  valor5.Enabled:=false;

  operar.visible:=true;


end;

procedure TForm1.InvertirClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
  q,m:string;
  posi,t,a:integer;
begin
  adicionar.visible:=false;
  obtenerbool:=false;
  insertarbool:=false;
  BusquedaBIbool:=false;
     necesitaORD.visible:=false;
     valor.Enabled:=false;
  valor2.Enabled:=false;
  valor3.Enabled:=false;
  valor4.Enabled:=false;
  valor5.Enabled:=false;
  busquedabool:=false;
        lnsertar.visible:=false;
    adicionarbox.visible:=false;
  buscar.visible:=false;
  posicion.visible:=false;
  posicionbox.visible:=false;
    n1:=valor.text;
    n2:=valor2.text;
    n3:=valor3.text;
    n4:=valor4.text;
    n5:=valor5.text;
   x.cargar(n1,n2,n3,n4,n5);
  resultado.Text:=x.Invertir;


    t:=length(resultado.text);
    a:=1;


    valor.text:='';
    Repeat
      valor.text:=valor.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=',';




      valor2.text:='';
      a:=a+2;
        Repeat
      valor2.text:=valor2.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=',';





       valor3.text:='';
       a:=a+2;
        Repeat
      valor3.text:=valor3.text+resultado.text[a];
      a:=a+1;
    until resultado.text[a]=',';




       valor4.text:='';
        a:=a+2;
        Repeat
      valor4.text:=valor4.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=',';





     valor5.text:='';
      a:=a+2;
        Repeat
      valor5.text:=valor5.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=' ';

end;



procedure TForm1.ObtenerClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
  q,m:string;
begin

       valor.Enabled:=false;
  valor2.Enabled:=false;
  valor3.Enabled:=false;
  valor4.Enabled:=false;
  valor5.Enabled:=false;

  adicionar.visible:=false;
  insertarbool:=false;
  BusquedaBIbool:=false;
     necesitaORD.visible:=false;
     buscar.visible:=false;
      lnsertar.visible:=false;
    adicionarbox.visible:=false;
   busquedabool:=false;
   adicionarBool:=false;
  posicion.visible:=true;
  posicionbox.visible:=true;
        n1:=valor.text;
    n2:=valor2.text;
    n3:=valor3.text;
    n4:=valor4.text;
   n5:=valor5.text;
   x.cargar(n1,n2,n3,n4,n5);
  posicion.left:=296;
  posicionbox.left:=296;
   operar.visible:=true;
   obtenerbool:=true;




end;


procedure TForm1.CargarClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
begin
  obtenerbool:=false;
  insertarbool:=false;
  BusquedaBIbool:=false;
    necesitaORD.visible:=false;
       posicion.left:=376;
  posicionbox.left:=376;
  busquedabool:=false;
    operar.visible:=false;
        adicionar.visible:=false;
    adicionarbox.visible:=false;
        Posicion.visible:=false;
    Posicionbox.visible:=false;
      lnsertar.visible:=false;
   buscar.visible:=false;
  valor.Enabled:=true;
  valor2.Enabled:=true;
  valor3.Enabled:=true;
  valor4.Enabled:=true;
  valor5.Enabled:=true;

 n1:=valor.text;
 n2:=valor2.text;
 n3:=valor3.text;
 n4:=valor4.text;
 n5:=valor5.text;

 x:=arreglos.create;
 x.cargar(n1,n2,n3,n4,n5);





end;

procedure TForm1.OrdenamientoClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
  q,m:string;
  posi,t,a:integer;
begin
 adicionar.visible:=false;
 obtenerbool:=false;
 insertarbool:=false;
 BusquedaBIbool:=false;
     valor.Enabled:=false;
  valor2.Enabled:=false;
  valor3.Enabled:=false;
  busquedabool:=false;
  valor4.Enabled:=false;
  valor5.Enabled:=false;
   necesitaORD.visible:=false;
        lnsertar.visible:=false;
    adicionarbox.visible:=false;
   buscar.visible:=false;
  posicion.visible:=false;
  posicionbox.visible:=false;
    n1:=valor.text;
    n2:=valor2.text;
    n3:=valor3.text;
    n4:=valor4.text;
    n5:=valor5.text;
   x.cargar(n1,n2,n3,n4,n5);
  resultado.Text:=x.ordenamiento;



    valor.text:='';
    Repeat
      valor.text:=valor.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=',';




      valor2.text:='';
      a:=a+2;
        Repeat
      valor2.text:=valor2.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=',';





       valor3.text:='';
       a:=a+2;
        Repeat
      valor3.text:=valor3.text+resultado.text[a];
      a:=a+1;
    until resultado.text[a]=',';




       valor4.text:='';
        a:=a+2;
        Repeat
      valor4.text:=valor4.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=',';





     valor5.text:='';
      a:=a+2;
        Repeat
      valor5.text:=valor5.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=' ';

end;

procedure TForm1.RotarClick(Sender: TObject);
var n1,n2,n3,n4,n5:string;
  q,m:string;
  posi,t,a:integer;
begin
  adicionar.visible:=false;
  obtenerbool:=false;
  insertarbool:=false;
     valor.Enabled:=false;
  valor2.Enabled:=false;
  valor3.Enabled:=false;
  busquedabool:=false;
  valor4.Enabled:=false;
  valor5.Enabled:=false;
   necesitaORD.visible:=false;
        lnsertar.visible:=false;
    adicionarbox.visible:=false;
   buscar.visible:=false;
  posicion.visible:=false;
  posicionbox.visible:=false;
    n1:=valor.text;
    n2:=valor2.text;
    n3:=valor3.text;
    n4:=valor4.text;
    n5:=valor5.text;
   x.cargar(n1,n2,n3,n4,n5);
  resultado.Text:=x.rotar;



    valor.text:='';
    Repeat
      valor.text:=valor.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=',';




      valor2.text:='';
      a:=a+2;
        Repeat
      valor2.text:=valor2.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=',';





       valor3.text:='';
       a:=a+2;
        Repeat
      valor3.text:=valor3.text+resultado.text[a];
      a:=a+1;
    until resultado.text[a]=',';




       valor4.text:='';
        a:=a+2;
        Repeat
      valor4.text:=valor4.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=',';





     valor5.text:='';
      a:=a+2;
        Repeat
      valor5.text:=valor5.text+resultado.text[a];
      a:=a+1;

    until resultado.text[a]=' ';

end;

procedure TForm1.valorChange(Sender: TObject);
begin

end;

end.

