program ej2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, UE2
  { you can add units after this };
var x:texto;
     n,m:string;

begin
 x:=x.create;


 writeln('Escriba la primera oracion');
 readln(n);
 x.setoracion(n);

  writeln('Escriba la segunda oracion');
 readln(m);
 x.setoracion2(m);
 x.UnirOraciones;
  Readln();

end.
