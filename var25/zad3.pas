program zad3;
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
writeln('Выполнил: студент гр. 1-100205 Ягубов М.С.');
writeln('Вариант 25');

  repeat
  inc (i);
  case i of
  1: begin a:=0.45; b:=7.384; x:=1.664 end; 
  2: begin a:=0.25; b:=5.2; x:=2.6; end; 
  3: begin a:=0.125; b:=4.68; x:=3.978; end; 
  end;

  if abs(x/b-2*a) <= 1e-10 then 
  begin y:=power(cth(x-3.57*power(a, 4)), 0.4) - arth(power(a, 3)) - power(cosech(sqr(a)+2.75*b/x), 0.2);
  nf:=2 end // 2-ое условие
  else if x/b-2*a > 0 then
  begin y:=ch(a-b*0.1*sqr(x)) - 0.225*power(th(b-x), 0.8) - arcsin(power(a, 4)*4.94*b*x);
  nf:=3 end // 3-ое условие
  else
  begin y:=power(11.209, 2.08*a-b-x) - 0.312*power(sin(power(a, 4)+6.28*b-x), 2.3) - 0.088*abs(-3.11*power(x, 4)-a);
  nf:=1 end; // 1-е условие

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

until i>=3
end.