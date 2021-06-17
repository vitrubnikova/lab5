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
writeln('Выполнил: студент гр. 1-100205 Трубникова В.А.');
writeln('Вариант 18');

  repeat
  inc (i);
  case i of
  1: begin a:=115.92; b:=4.65; x:=3.542 end; 
  2: begin a:=69; b:=5; x:=4.6; end; 
  3: begin a:=41.4; b:=5.15; x:=5.612; end; 
  end;

  if abs(a-x*3*b) <= 1e-10 then 
  begin y:=power(logN(5, a/6.34/sqr(b)+x), 1.5) - 0.04*cosech(x/b) + power(th(x), 1.3);
  nf:=2 end // 2-ое условие
  else if a-x*3*b > 0 then
  begin y:=0.098*ln(2.96*power(b, 3)-x) * power(cosec(4.98*a/power(b, 3)/x), 0.8) + sech(a/2.59/b);
  nf:=1 end // 1-ое условие
  else
  begin y:=arctan(-0.45*a+b+x) * power(log10(3.34*a/x), 0.3) + tg(a/5.81/power(b, 4)-x);
  nf:=3 end; // 3-е условие

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

until i>=3
end.