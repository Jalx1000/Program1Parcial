unit EnterosU2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { EnterosP }

  EnterosP=class
    private
     valorentero,base:string;

     public

         constructor Create();
      procedure setvalorentero (n:string);
      function getvalorentero ():string;
      procedure setbase (j:string);
      function getbase ():string;

      function Invertirp():string;
      function capicula():string;
      function par():String;
      function Impar():string;
      function primo():string;
      function binario():string;
      function octal():string;
      function hexadecimal():string;
      Function baseN():String;
      Function Romanos():String;
      function Literal():string;





  end;


implementation

{ EnterosP }

constructor EnterosP.Create();
begin
  valorEntero:='';
end;

procedure EnterosP.setvalorentero(n: string);
begin
valorentero:=n;
end;

function EnterosP.getvalorentero(): string;
begin
  result:=valorentero;
end;

procedure EnterosP.setbase(j: string);
begin
  base:=j;
end;

function EnterosP.getbase(): string;
begin
   result:=base;
end;

function EnterosP.Invertirp(): string;
var posi,t:byte;
  r:string;
begin
  r:='';
  t:=length(valorentero);
  for posi:=1 to t do begin
    r:=valorentero[posi]+r;
  end;

  result:=r;
end;

function EnterosP.capicula(): string;
var posi,t:byte;
  r:string;
begin
  valorentero:=trim(valorentero);
  r:='';
  t:=length(valorentero);
  for posi:=1 to t do begin
    r:=valorentero[posi]+r;
  end;

  if valorentero=r then begin
    Result:='Es capicula';
  end else begin
    result:='No es capicula';
  end;

end;

function EnterosP.par(): String;
var p:integer;
begin
  p:=strtoint(valorentero);
  if (p mod 2)=0 then begin
      result:='Es par';
  end else begin
     result:='No es par';
  end;
end;

function EnterosP.Impar(): string;
var p:integer;
begin
     p:=strtoint(valorentero);
  if (p mod 2)=1 then begin
      result:='Es impar';
  end else begin
     result:='No es impar';
  end;
end;

function EnterosP.primo(): string;
var posi,p,a:integeR;
begin
  a:=0;
  p:=strtoint(valorentero);
  for posi:=1 to p do begin
       if (p mod posi)=0 then begin
        a:=a+1;
       end;
  end;

  if a=2 then begin
    result:='Es un numero primo';
   end else begin
    result:='No es primo';
   end;
end;

function EnterosP.binario(): string;
var b,p,k:integer;
  r:string;
begin
  b:=0;
  p:=strtoint(valorentero);
 k:=p;

  repeat
 if p=k then begin

 b:=p mod 2;
 r:=inttostr(b)+r;

 end;

 p:=p div 2;
 b:=p mod 2;
 r:=inttostr(b)+r;

 until p<2 ;
 result:='En binario: '+r;

end;

function EnterosP.octal(): string;
var b,p,k:integer;
  r:string;
begin
  b:=0;
  p:=strtoint(valorentero);
 k:=p;

  repeat
 if p=k then begin

 b:=p mod 8;
 r:=inttostr(b)+r;

 end;

 p:=p div 8;
 b:=p mod 8;
 r:=inttostr(b)+r;

 until p<8 ;
 result:='En octal: '+r;

end;

function EnterosP.hexadecimal(): string;
var b,p,k:integer;
  r:string;
  l:string;
begin
  l:='Putos';
  b:=0;
  p:=strtoint(valorentero);
 k:=p;

  repeat
 if p=k then begin

 b:=p mod 16;

 case b of
    10 : l:='A';
    11 : l:='B';
    12 : l:='C';
    13 : l:='D';
    14 : l:='E';
    15 : l:='F';

 end;

  if b>=10 then begin
  r:=l+r;
  end;

  if b<10 then begin
 r:=inttostr(b)+r;
  end;

 end;

 p:=p div 16;
 b:=p mod 16;

  case b of
    10 : l:='A';
    11 : l:='B';
    12 : l:='C';
    13 : l:='D';
    14 : l:='E';
    15 : l:='F';

 end;

    if b>=10 then begin
     r:=l+r;
     end;

     if b<10 then begin
    r:=inttostr(b)+r;
     end;

 until p<16 ;
 result:='En hexadecimal: '+r;

end;

function EnterosP.baseN(): String;
var b,k,p,o:integer;
 r:string;
begin
r:='';
b:=0;
p:=strtoint(valorentero);
o:=strtoint(base);
k:=p;
 if o>2 then begin

 if o<9 then begin
 repeat

 if p=k then begin
 b:=p mod o;
 r:=inttostr(b)+r;
 end;
 p:=p div o;
 b:=p mod o;
 r:=inttostr(b)+r;
 until p<o ;

 end else begin
 Result:='Introduzca un numero menor a 9';
 end;
 end else begin
 result:='Introduzca un numero mayor a 2';
 end;
 result:=r;
end;

function EnterosP.Romanos(): String;
var millar,centena,decimal,unidad,rest:integer;
 p,l:integeR;
 rom:string;
begin

p:=strtoint(valorentero);

if p>=4000 then begin
   rom:='Ingrese una cantidad menor a 4000';
   l:=1;
end;


if l=0 then begin
Millar:=p div 1000;
rest:=millar*1000;
p:=p-rest;
centena:=p div 100;
rest:=centena*100;
p:=p-rest;
Decimal:=p div 10;
rest:=Decimal*10;
p:=p-rest;
unidad:=p;

case millar of
1 : rom:='M';
2 : rom:='MM';
3 : rom:='MMM';
end;
 case centena of
1 : rom:=rom+'C';
2 : rom:=rom+'CC';
3 : rom:=rom+'CCC';
4 : rom:=rom+'CD';
5 : rom:=rom+'D';
6 : rom:=rom+'DC';
7 : rom:=rom+'DCC';
8 : rom:=rom+'DCCC';
9 : rom:=rom+'CM';
end;
 case decimal of
1 : rom:=rom+'X';
2 : rom:=rom+'XX';
3 : rom:=rom+'XXX';
4 : rom:=rom+'XL';
5 : rom:=rom+'L';
6 : rom:=rom+'LX';
7 : rom:=rom+'LXX';
8 : rom:=rom+'LXXX';
9 : rom:=rom+'XC';
end;
 case unidad of
1 : rom:=rom+'I';
2 : rom:=rom+'II';
3 : rom:=rom+'III';
4 : rom:=rom+'IV';
5 : rom:=rom+'V';
6 : rom:=rom+'VI';
7 : rom:=rom+'VII';
8 : rom:=rom+'VIII';
9 : rom:=rom+'IX';
end;
end;

 result:=(rom);
end;

function EnterosP.Literal(): string;
var p,l,du,h,dd,dc:integer;
lit:string;
begin
du:=0;

l:=0;
  p:=strtoint(valorentero);
  h:=p;

  if h<10 then begin
  du:=p mod 10;
  end;


  if h<100 then begin
   if h>=10 then begin
     du:=p mod 10;
     p:=p div 10;
     dd:=p mod 10;
   end;
  end;

 if h>100 then begin

  du:=p mod 10;
    p:=p div 10;
    dd:=p mod 10;
    p:=p div 10;
    dc:=p mod 10;
 end;




  if h>1000 then begin
  lit:='Ingrese un numero menor igual a 1000';
  l:=1;
  end;



  if l=0 then begin


   case du of
   0 : lit:=''+lit;
   1 : lit:=' uno';
   2 : lit:=' dos';
   3 : lit:=' tres';
   4 : lit:=' cuatro';
   5 : lit:=' cinco';
   6 : lit:=' seis';
   7 : lit:=' siete';
   8 : lit:=' ocho';
   9 : lit:=' nueve';
   end;

      case h mod 100 of
   11 : lit:=' once ';
   12 : lit:=' doce ';
   13 : lit:=' trece ';
   14 : lit:=' catorce ';
   15 : lit:=' quince ';
   16 :  lit:=' dieci'+lit;
   17 : lit:=' dieci'+lit;
   18 :  lit:=' dieci'+lit;
   19 :  lit:=' dieci'+lit;

   end;


 if h<10 then begin

 end else if h>10 then begin
     case dd of
   0 : lit:=''+lit;
   2 : lit:=' veinti'+lit;
   3 : lit:=' treinta y '+lit;
   4 : lit:=' cuarenta y '+lit;
   5 : lit:=' cincuenta y '+lit;
   6 : lit:=' sesenta y '+lit;
   7 : lit:=' setenta y '+lit;
   8 : lit:=' ochenta y '+lit;
   9 : lit:=' noventa y '+lit;
 end;




      case dc of
   0 : lit:=''+lit;
   1 : lit:='Ciento'+lit;
   2 : lit:='Doscientos'+lit;
   3 : lit:='Trescientos'+lit;
   4 : lit:='Cuatrocientos'+lit;
   5 : lit:='Quinientos'+lit;
   6 : lit:='Seiscientos'+lit;
   7 : lit:='Setecientos'+lit;
   8 : lit:='Ochocientos'+lit;
   9 : lit:='Novecientos'+lit;

   end;


  end;

  if h=100 then begin
  lit:='Cien';
  end;

  if h=1000 then begin
  lit:='Mil';
  end;

  if h=0 then begin
  lit:='Cero';
  end;

  if h=10 then begin
  lit:='Diez';
  end;

   if h=20 then begin
  lit:='Veinte';
  end;

   if h=30 then begin
  lit:='Treinta';
  end;

     if h=40 then begin
  lit:='Cuarenta';
  end;


       if h=50 then begin
  lit:='Cincuenta';
  end;


         if h=60 then begin
  lit:='Sesenta';
  end;


           if h=70 then begin
  lit:='Setenta';
  end;

             if h=80 then begin
  lit:='Ochenta';
  end;

     if h=900 then begin
  lit:='Noventa';
  end;

     if h>1000 then begin
     lit:='Digite un numero menor a 1000';
     end;
  result:=lit;
 end;



end;

end.

