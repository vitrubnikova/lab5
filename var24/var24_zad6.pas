program zad6;
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
  1: begin a:=4.335; b:=0.61; x:=5.39 end; 
  2: begin a:=5.1; b:=0.5; x:=7; end; 
  3: begin a:=10.047; b:=0.48; x:=11.69; end; 
  end;

  if abs(b-0.8*x+a) <= 1e-10 then 
  begin y:=0.704*power(ctg(6.91*a/b/power(x, 3)), 2.1) - 0.236*ln(sqr(a)-3.5*b*x) + 0.55*power(arth(b/a), 0.1);
  nf:=2 end // 2-ое условие
  else if b-0.8*x+a > 0 then
  begin y:=arcsin(b/0.49/x) - power(sech(sqr(a)*0.34*b), 1.7) + th(b/-1.58/a);
  nf:=1 end // 1-ое условие
  else
  begin y:=cos(7.87*a/x) + power(sh(power(b, 3)), 1.6) + 0.161*sec(0.62*a+b+x);
  nf:=3 end; // 3-е условие

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

until i>=3
end.
