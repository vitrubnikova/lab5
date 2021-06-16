program zad5;
var	a, b, x, y: real;
i, nf: integer;

function sec(x:real):real; begin sec:=1/cos(x) end;
function cosec(x:real):real; begin cosec:=1/sin(x) end;
function tg(x:real):real; begin tg:=sin(x)/cos(x) end;
function ctg(x:real):real; begin ctg:=cos(x)/sin(x) end;
function sh(x:real):real; begin sh:=(exp(x)-exp(-x))/2 end;
function sech(x:real):real; begin sech:=2/(exp(x)+exp(-x)) end;
function cosech(x:real):real; begin cosech:=2/(exp(x)-exp(-x)) end;
function ch(x:real):real; begin ch:=(exp(x)+exp(-x))/2 end;
function th(x:real):real; begin th:=(exp(x)-exp(-x))/(exp(x)+exp(-x)) end;
function cth(x:real):real; begin cth:=(exp(x)+exp(-x))/(exp(x)-exp(-x)) end;
function arsh(x:real):real; begin arsh:=ln(x+sqrt(x*x+1)) end;
function arch(x:real):real; begin arch:=ln(x+sqrt(x*x-1)) end;
function arth(x:real):real; begin arth:=0.5*ln((x+1)/(1-x)) end;
function arcth(x:real):real; begin arcth:=0.5*ln((x+1)/(x-1)) end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;
function arcsin(x:real):real; begin
if x=1 then arcsin:=Pi/2
else if x=-1 then arcsin:=-Pi/2
else arcsin:=arctan(x/sqrt(1-x*x)) end;
function arccos(x:real):real; begin
if x=1 then arccos:=0
else if x=-1 then arccos:=Pi
else arccos:=Pi/2-arctan(x/sqrt(1-x*x)) end;

begin
writeln('Программирование разветвляющихся и циклических вычислительных процессов');
writeln('Выполнил: студент гр. 1-100205 Юрчишин А.С.');
writeln('Вариант 24');

  repeat
  inc (i);
  case i of
  1: begin a:=5.13; b:=75.456; x:=2.136 end; 
  2: begin a:=9; b:=39.3; x:=2.4; end; 
  3: begin a:=9.09; b:=20.043; x:=2.424; end; 
  end;

  if abs(4.1*a+x-b) <= 1e-10 then 
  begin y:=power(arcth(2.37*b/x), 2.5) - 0.246*arccos(b/5.08/a) + power(log10(7.15*power(a, 4)*b/x), 1.7);
  nf:=2 end // 2-ое условие
  else if 4.1*a+x-b > 0 then
  begin y:=0.108*ch(power(a, 3)/-2.83/b/x) - power(arcctg(1.52*a*b/x), 2.1) * exp(1.1*a-x);
  nf:=3 end // 3-ое условие
  else
  begin y:=arctan(4.08*power(a, 3)+b*x) + sqr(arth(sqr(a)/b)) * cos(a-x) ;
  nf:=1 end; // 1-е условие

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

until i>=3
end.