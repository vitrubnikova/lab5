program zad1;
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

for i:=1 to 3 do
  begin
  begin
  case i of
  1: begin a:=17.136; b:=0.134; x:=6.75 end; 
  2: begin a:=14.4; b:=0.2; x:=9; end; 
  3: begin a:=13.392; b:=0.316; x:=15.21; end; 
  end;

  if abs(8*b*x-a) <= 1e-10 then 
  begin y:=0.195*power(sec(0.33*b/x), 0.7) + cosech(b-0.72*x) - power(arcsin(a*power(b, 4)), 0.6);
  nf:=2 end // 2-ое условие
  else if 8*b*x-a > 0 then
  begin y:=0.396*tg(-0.31*a-b) * 0.296* power(arcctg(b-a), 1.2) * arcth(a+b*1.85*x);
  nf:=3 end // 3-ое условие
  else
  begin y:=log10(a+0.67*x) * power(sin(b/a), 2.2) + sh(b/0.62/a);
  nf:=1 end // 1-е условие
end;

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

end
end.