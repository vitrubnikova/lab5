program zad4;
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
  1: begin a:=0.858; b:=56.287; x:=6.794 end; 
  2: begin a:=1.1; b:=47.3; x:=8.6; end; 
  3: begin a:=1.419; b:=38.786; x:=14.792; end; 
  end;

  if abs(b-x*5*a) <= 1e-10 then 
  begin y:=power(arch(b+1.81*x), 2.9) * arccos(3.12*x/b) + power(tg(-3.72*x-power(a, 3)), 1.2);
  nf:=2 end // 2-ое условие
  else if b-x*5*a > 0 then
  begin y:=power(14.274, a-x) - power(ch(a/0.98/b), 1.8) - 0.06*logN(6, x/4.72/power(a, 3));
  nf:=1 end // 1-ое условие
  else
  begin y:=arcth(a*0.18*power(b, 4)/x) + power(b, x/1.83/b) + arctan(power(a, 3)-1.79*b+x);
  nf:=3 end; // 3-е условие

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

until i>=3
end.