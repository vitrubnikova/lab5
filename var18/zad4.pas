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
  1: begin a:=4.356; b:=3.652; x:=20.394 end; 
  2: begin a:=4.4; b:=4.4; x:=19.8; end; 
  3: begin a:=4.928; b:=6.424; x:=10.89; end; 
  end;

  if abs(a+3.5*b-x) <= 1e-10 then 
  begin y:=0.14*power(arch(power(a, 4)-b), 2.2) * 0.534*arctan(a-0.25*power(b, 4)/x) + power(sech(7.41*a/b/sqr(x)), 0.6);
  nf:=2 end // 2-ое условие
  else if a+3.5*b-x > 0 then
  begin y:=power(x, 5.75*a/b/x) * power(ln(1.3*sqr(a)-b/x), 2.9) + arcth(a);
  nf:=3 end // 3-ое условие
  else
  begin y:=sin(a/b+4.6*x) + 0.291*power(cosec(4.01*a+x), 0.3) - tg(a/b);
  nf:=1 end; // 1-е условие

writeln('Аргументы: ', a, ', ', b, ', ', x, '; Формула: ', nf, '; Функция:', y:12:6);

until i>=3
end.